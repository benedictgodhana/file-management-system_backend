<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\FileController;
use App\Http\Controllers\DirectoryController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

// Authenticated user route
Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});


// Routes for Files
Route::prefix('files')->group(function () {
    Route::get('/', [FileController::class, 'index']); // List all files
    Route::get('{id}', [FileController::class, 'show']); // Get details of a specific file
    Route::post('/', [FileController::class, 'store']); // Upload a new file
    Route::put('{id}', [FileController::class, 'update']); // Update a specific file
    Route::delete('{id}', [FileController::class, 'destroy']); // Delete a specific file
    Route::post('/upload', [FileController::class, 'upload']);
});

// Routes for Directories
Route::prefix('directories')->group(function () {
    Route::get('/', [DirectoryController::class, 'index']); // List all directories
    Route::get('{id}/sub-directories', [DirectoryController::class, 'listSubDirectories']); // List subdirectories of a directory
    Route::get('{id}/files', [DirectoryController::class, 'listFiles']); // List files in the current directory
    Route::post('/', [DirectoryController::class, 'store']); // Create a new directory
    Route::put('{id}', [DirectoryController::class, 'update']); // Update a directory
    Route::delete('{id}', [DirectoryController::class, 'destroy']); // Delete a directory
    Route::get('/directories/{id}/files', [DirectoryController::class, 'getFiles']);
    Route::post('/{directory}/children', [DirectoryController::class, 'addSubdirectory']);


});
