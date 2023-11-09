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
        if(isset($filters['search']) ? $filters['search'] : false){
            return $query->where('title','like','%'.$filters['search'].'%')//mengambil data dari url dan mencari data yang sama dengan title yang ada di database
                    ->orWhere('body','like','%'.$filters['search'].'%'); //mengambil data dari url dan mencari data yang sama dengan body yang ada di database
        }
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
