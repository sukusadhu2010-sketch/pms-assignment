<?php

use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('welcome');
});

Route::prefix('v1')->group(function () {
    Route::post('/login', [App\Http\Controllers\Api\v1\AuthController::class, 'login']);
    Route::get('/tasks', [App\Http\Controllers\Api\v1\TaskController::class, 'task_list']);
});