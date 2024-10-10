<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Storage;

class File extends Model
{
    use HasFactory;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = ['name', 'path', 'size', 'type', 'directory_id'];


    public function directory()
    {
        return $this->belongsTo(Directory::class);
    }

    protected static function booted()
    {
        static::deleted(function ($file) {
            Storage::delete($file->path);
        });
    }
}
