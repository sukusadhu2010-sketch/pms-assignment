<?php

namespace App\Http\Controllers\Api\v1;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Task;
use App\Models\Project;
use Illuminate\Support\Facades\Auth;

class TaskController extends Controller {
    public function task_list( Request $request ) {

        // return Auth::user();
        $request->validate( [
            'status' => 'nullable|in:todo,in_progress,done',
            'priority' => 'nullable|in:low,medium,high',
            'project_id' => 'nullable|exists:projects,id',
        ] );

        try {
            $tasks = Task::with( 'project', 'user' );
            if ( $request->has( 'status' ) ) {
                $tasks->where( 'status', $request->status );
            }
            if ( $request->has( 'priority' ) ) {
                $tasks->where( 'priority', $request->priority );
            }
            if ( $request->has( 'project_id' ) ) {
                $tasks->where( 'project_id', $request->project_id );
            }

            $tasks = $tasks->orderBy( 'due_date', 'desc' )->paginate( 5 );
            return new \App\Http\Resources\TaskCollection( $tasks );
            // return response()->json( [
            //     'tasks' => $tasks,
            // ] );
        } catch ( \Throwable $th ) {
            return response()->json( [
                'message' => $th->getMessage(),
            ] );
        }

    }

    public function task_update( Request $request, $id ) {
        $task = Task::findOrFail( $id );

        $request->validate( [
            'status' => 'required|in:todo,in_progress,done',
        ] );

        try {
            if ( $task->assigned_to !== Auth::id() ) {
                return response()->json( [
                    'status' => false,
                    'message' => 'You are not authorized to update this task.',
                ], 403 );
            }
            $task->status = $request->status;
            $task->save();

            return response()->json( [
                'status' => true,
                'message' => 'Task status updated successfully.',
                'task' => $task,
            ] );
        } catch ( \Throwable $th ) {
            return response()->json( [
                'status' => false,
                'message' => 'An error occurred while updating the task status.',
            ] );
        }
    }
}