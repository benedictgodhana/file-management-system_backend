<?php

namespace App\Http\Controllers;

use App\Models\File;
use App\Models\Directory;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class FileController extends Controller
{
    // List all files in the system
    public function index()
    {
        $files = File::all();
        return response()->json($files);
    }

    // Get the details of a specific file
    public function show($id)
    {
        $file = File::find($id);

        if (!$file) {
            return response()->json(['message' => 'File not found'], 404);
        }

        return response()->json($file);
    }

    public function upload(Request $request)
    {
        $request->validate([
            'files.*' => 'required|file|max:10240', // Limit file size to 10MB
            'directory_id' => 'required|exists:directories,id',
        ]);

        $uploadedFiles = [];

        foreach ($request->file('files') as $file) {
            // Store file in storage
            $path = $file->store('uploads');

            // Save file details to database
            $fileRecord = File::create([
                'name' => $file->getClientOriginalName(),
                'path' => $path,
                'directory_id' => $request->directory_id,
                'size' => $file->getSize(),
                'type' => $file->getClientMimeType(),
            ]);

            $uploadedFiles[] = $fileRecord;
        }

        return response()->json(['message' => 'Files uploaded successfully', 'files' => $uploadedFiles], 201);
    }

    // Update a file's information
    public function update(Request $request, $id)
    {
        $file = File::find($id);

        if (!$file) {
            return response()->json(['message' => 'File not found'], 404);
        }

        $request->validate([
            'name' => 'sometimes|string|max:255',
        ]);

        if ($request->has('name')) {
            $file->name = $request->name;
            $file->save();
        }

        return response()->json($file);
    }

    // Delete a file
    public function destroy($id)
    {
        $file = File::find($id);

        if (!$file) {
            return response()->json(['message' => 'File not found'], 404);
        }

        // Remove the file from the storage
        Storage::delete($file->path);

        // Delete the file from the database
        $file->delete();

        return response()->json(['message' => 'File deleted successfully']);
    }
}
