<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // Call the DirectorySeeder and FileSeeder
        $this->call(DirectorySeeder::class);
        $this->call(FileSeeder::class);
    }
}
