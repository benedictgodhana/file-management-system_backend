<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Directory;

class DirectorySeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // Create root directory
        $root = Directory::create([
            'name' => 'root',
            'parent_id' => null,
        ]);

        // Create first level directory under root
        $dir1 = Directory::create([
            'name' => 'dir1',
            'parent_id' => $root->id,
        ]);

        // Create a subdirectory under dir1
        $dir2 = Directory::create([
            'name' => 'dir2',
            'parent_id' => $dir1->id,
        ]);

        // Create additional directories and subdirectories
        Directory::create([
            'name' => 'file3',
            'parent_id' => $dir1->id,
        ]);

        Directory::create([
            'name' => 'file4',
            'parent_id' => $root->id,
        ]);
    }
}
