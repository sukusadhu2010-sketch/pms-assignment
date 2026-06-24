<?php

namespace App\Http\Controllers\Api\v1;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Task;
use App\Models\Project;

class TaskController extends Controller {
    public function task_list( Request $request ) {

        $tasks = Task::with( 'project', 'user' )
        ->paginate( 5 );

        return response()->json( [
            'tasks' => $tasks,
        ] );

    }
}