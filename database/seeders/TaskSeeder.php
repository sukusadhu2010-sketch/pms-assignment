<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use DB;

class TaskSeeder extends Seeder {
    /**
    * Run the database seeds.
    */

    public function run(): void {
        DB::table( 'tasks' )->insert( [
            [
                'project_id' => 1,
                'title' => 'User Add',
                'description' => 'Description for Project 1',
                'status' => 'todo',
                'priority' => 'high',
                'due_date' => now(),
                'assigned_to' => 2,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'project_id' => 1,
                'title' => 'User Edit',
                'description' => 'Description for Project 1',
                'status' => 'todo',
                'priority' => 'high',
                'due_date' => now(),
                'assigned_to' => 3,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'project_id' => 1,
                'title' => 'User View',
                'description' => 'Description for Project 1',
                'status' => 'todo',
                'priority' => 'high',
                'due_date' => now(),
                'assigned_to' => 3,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'project_id' => 1,
                'title' => 'User Delete',
                'description' => 'Description for Project 1',
                'status' => 'todo',
                'priority' => 'high',
                'due_date' => now(),
                'assigned_to' => 2,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'project_id' => 2,
                'title' => 'User Add',
                'description' => 'Description for Project 1',
                'status' => 'todo',
                'priority' => 'high',
                'due_date' => now(),
                'assigned_to' => 3,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'project_id' => 2,
                'title' => 'User Edit',
                'description' => 'Description for Project 1',
                'status' => 'todo',
                'priority' => 'high',
                'due_date' => now(),
                'assigned_to' => 2,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'project_id' => 2,
                'title' => 'User View',
                'description' => 'Description for Project 1',
                'status' => 'todo',
                'priority' => 'high',
                'due_date' => now(),
                'assigned_to' => 2,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'project_id' => 2,
                'title' => 'User Delete',
                'description' => 'Description for Project 1',
                'status' => 'todo',
                'priority' => 'high',
                'due_date' => now(),
                'assigned_to' => 3,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'project_id' => 3,
                'title' => 'User Add',
                'description' => 'Description for Project 1',
                'status' => 'todo',
                'priority' => 'high',
                'due_date' => now(),
                'assigned_to' => 2,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'project_id' => 3,
                'title' => 'User Edit',
                'description' => 'Description for Project 1',
                'status' => 'todo',
                'priority' => 'high',
                'due_date' => now(),
                'assigned_to' => 2,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'project_id' => 3,
                'title' => 'User Delete',
                'description' => 'Description for Project 1',
                'status' => 'todo',
                'priority' => 'high',
                'due_date' => now(),
                'assigned_to' => 2,
                'created_at' => now(),
                'updated_at' => now(),
            ]
        ] );
    }
}