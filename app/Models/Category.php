<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    use HasFactory;

    protected $guarded = ['id'];

    //cara menghubungkan model Category dengan model Post
    public function posts()
    {
        return $this->hasMany(Post::class); //artinya satu category memiliki banyak post
    }
}