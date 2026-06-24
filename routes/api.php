<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\v1\AuthController;
use App\Http\Controllers\Api\v1\TaskController;

Route::get('/user', function (Request $request) {
    return $request->user();
})->middleware('auth:sanctum');


    Route::post('login', [AuthController::class, 'login']);
    Route::middleware('auth:api')->group(function () {
        Route::post('v1/tasks', [TaskController::class, 'task_list']);
          Route::post('v1/task_update/{id}', [TaskController::class, 'task_update']);
    });
   // Route::post('v1/tasks', [TaskController::class, 'task_list'])->middleware('auth');;