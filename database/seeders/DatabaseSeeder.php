<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    use WithoutModelEvents;

    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        // User::factory(10)->create();

        User::factory()->create([[
            'name' => 'John Doe',
            'email' => 'johnDoe@yopmail.com',
            'password' => bcrypt('password'),
        ],
        [
            'name' => 'Jane Smith',
            'email' => 'janeSmith@yopmail.com',
            'password' => bcrypt('password'),
        ],
        [
            'name' => 'Test User',
            'email' => 'test@yopmail.com',
            'password' => bcrypt('password'),
        ]
        ]);
    }
}