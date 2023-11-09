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

    public function scopeFilter($query, array $filters){ //ini untuk membuat scope filter yang bisa digunakan di controller

        $query->when($filters['search'] ?? false, function($query,$search){ //mengambil data dari url dan mencari data yang sama dengan title yang ada di database menggunakan when dan ternary operator ?? false yang artinya jika tidak ada maka false dan jika ada maka true dan $search adalah variabel yang menampung data dari url yang akan dicari di database 
            return $query->where('title','like','%'.$search.'%') //mengambil data dari url dan mencari data yang sama dengan title yang ada di database 
                    ->orWhere('body','like','%'.$search.'%'); //mengambil data dari url dan mencari data yang sama dengan body yang ada di database
        });
    }

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
