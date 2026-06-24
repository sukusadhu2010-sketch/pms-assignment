<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

Route::get('/user', function (Request $request) {
    return $request->user();
})->middleware('auth:sanctum');


    Route::post('login', [App\Http\Controllers\Api\v1\AuthController::class, 'login']);
    Route::get('tasks', [App\Http\Controllers\Api\v1\TaskController::class, 'task_list']);