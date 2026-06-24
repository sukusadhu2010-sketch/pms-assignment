<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Project;
use DB;

class ProjectSeeder extends Seeder {
    /**
    * Run the database seeds.
    */

    public function run(): void {
        DB::table( 'projects' )->insert( [
            [
                'title' => 'Project 1',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'title' => 'Project 2',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'title' => 'Project 3',
                'created_at' => now(),
                'updated_at' => now(),
            ],
        ] );
    }
}