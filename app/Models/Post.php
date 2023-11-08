<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    use HasFactory;

    // protected $fillable = ['title','excerpt','body']; //Ini boleh diisi kalau yang gaboleh diisi di $guarded
    protected $guarded = ['id']; //Ini boleh diisi kalau yang boleh diisi di $fillable
}
