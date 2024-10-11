<?php

namespace App\Http\Controllers;

use App\Models\Directory;
use App\Models\File;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class DirectoryController extends Controller
{
    /**
     * List all directories.
     */
    public function index()
    {
        $directories = Directory::all();

        return response()->json($directories);
    }

    /**
     * Get sub-directories and files of a specific directory.
     */
    public function show($id)
    {
        $directory = Directory::with(['subDirectories', 'files'])->findOrFail($id);

        return response()->json($directory);
    }

    /**
     * Create a new directory.
     */
    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required|string|max:255',
            'parent_id' => 'nullable|exists:directories,id',
        ]);

        $parentDirectory = $request->input('parent_id') ? Directory::find($request->input('parent_id')) : null;

        // Define the path for the directory
        $path = $parentDirectory ? $parentDirectory->path . '/' . $request->input('name') : $request->input('name');

        // Create the directory in the filesystem
        Storage::makeDirectory($path);

        // Save directory in the database
        $directory = Directory::create([
            'name' => $request->input('name'),
            'path' => $path,
            'parent_id' => $request->input('parent_id'),
        ]);

        return response()->json($directory, 201);
    }

    /**
     * Update a directory's name.
     */
    public function update(Request $request, $id)
    {
        $directory = Directory::findOrFail($id);

        $request->validate([
            'name' => 'required|string|max:255',
        ]);

        $oldPath = $directory->path;
        $newPath = $directory->parent ? $directory->parent->path . '/' . $request->input('name') : $request->input('name');

        // Rename the directory in the filesystem
        Storage::move($oldPath, $newPath);

        // Update directory in the database
        $directory->update([
            'name' => $request->input('name'),
            'path' => $newPath,
        ]);

        return response()->json($directory);
    }

    /**
     * Delete a directory and its contents.
     */
    public function destroy($id)
    {
        $directory = Directory::with('files', 'subDirectories')->findOrFail($id);

        if ($directory->files->isNotEmpty() || $directory->subDirectories->isNotEmpty()) {
            return response()->json(['error' => 'Directory is not empty'], 400);
        }

        // Delete directory from the filesystem
        Storage::deleteDirectory($directory->path);

        // Delete the directory from the database
        $directory->delete();

        return response()->json(['message' => 'Directory deleted successfully'], 200);
    }

    /**
     * Get files in the current directory.
     */
    public function getFiles($id)
    {
        $directory = Directory::findOrFail($id);
        $files = $directory->files;

        return response()->json($files);
    }

    public function listFiles($id)
{
    return $this->getFiles($id); // You can redirect to the existing method
}

    /**
     * Get sub-directories of the current directory.
     */
    public function getSubDirectories($id)
    {
        $directory = Directory::findOrFail($id);
        $subDirectories = $directory->subDirectories;

        return response()->json($subDirectories);
    }



    public function addSubdirectory(Request $request, Directory $directory)
{
    $validatedData = $request->validate([
        'name' => 'required|string|min:3',
    ]);
    
    $subdirectory = $directory->children()->create($validatedData);

    return response()->json($subdirectory, 201);
}

}
