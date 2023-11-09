<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    use HasFactory;

    // protected $fillable = ['title','excerpt','body']; //Ini boleh diisi kalau yang gaboleh diisi di $guarded
    protected $guarded = ['id']; //Ini boleh diisi kalau yang boleh diisi di $fillable

    protected $with = ['category','user']; //ini untuk mengambil data category dan author secara otomatis

    //cara menghubungkan model Post dengan model Category
    public function category()
    {
        return $this->belongsTo(Category::class); //artinya satu post dimiliki oleh satu category
    }

    public function user()
    {
        return $this->belongsTo(User::class); //artinya satu post dimiliki oleh satu user
    }
}
