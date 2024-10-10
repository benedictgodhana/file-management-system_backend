<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\File;
use App\Models\Directory;

class FileSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // Fetch the root and some nested directories
        $root = Directory::where('name', 'root')->first();
        $dir1 = Directory::where('name', 'dir1')->first();
        $dir2 = Directory::where('name', 'dir2')->first();

        // Create files in the root directory
        File::create([
            'name' => 'file_root.txt',
            'path' => 'root/file_root.txt',
            'directory_id' => $root->id,
        ]);

        // Create files in the first directory (dir1)
        File::create([
            'name' => 'file1.txt',
            'path' => 'root/dir1/file1.txt',
            'directory_id' => $dir1->id,
        ]);

        File::create([
            'name' => 'file2.txt',
            'path' => 'root/dir1/file2.txt',
            'directory_id' => $dir1->id,
        ]);

        // Create files in the second directory (dir2, under dir1)
        File::create([
            'name' => 'file3.txt',
            'path' => 'root/dir1/dir2/file3.txt',
            'directory_id' => $dir2->id,
        ]);
    }
}
