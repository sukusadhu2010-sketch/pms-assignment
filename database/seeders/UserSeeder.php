<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\User;

class UserSeeder extends Seeder {
    /**
    * Run the database seeds.
    */

    public function run(): void {
        User::factory()->create( [
            'name' => 'Test User2',
            'email' => 'test2@yopmail.com',
            'password' => bcrypt( 'password' ),
        ] );
    }
}