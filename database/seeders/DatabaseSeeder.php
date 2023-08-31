<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use App\Models\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        $exists = DB::table('users')
            ->where('email', 'jointheteam@aglet.co.za')
            ->exists();

        if (! $exists) {
            User::factory()->create([
                'name' => 'Team Aglet',
                'username' => 'jointheteam',
                'email' => 'jointheteam@aglet.co.za',
                'password' => Hash::make('@TeamAglet'),
            ]);
        }

    }
}
