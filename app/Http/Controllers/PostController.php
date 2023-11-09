<?php

namespace App\Http\Controllers;
use App\Models\Post;
use App\Models\Category;
use App\Models\User;

use Illuminate\Http\Request;

class PostController extends Controller
{
    public function index(){

        // dd(request('search'));//mengambil data dari url
        //sekarang akan ada kondisi dulu search atau tidak
        
        $title ='';
        if(request('category')){
            $category = Category::firstWhere('slug', request('category')); //mengambil data dari url dan mencari data yang sama dengan slug yang ada di database
            $title = ' in ' . $category->name; //mengambil data dari url dan mencari data yang sama dengan name yang ada di database
        }

        if(request('user')){
            $user = User::firstWhere('username', request('user')); //mengambil data dari url dan mencari data yang sama dengan username yang ada di database
            $title = ' by ' . $user->name; //mengambil data dari url dan mencari data yang sama dengan name yang ada di database
        }

        return view('posts',[
            "title" => "All Posts" . $title,
            "active" => "posts",
            "posts" => Post::latest()->filter(request(['search', 'category' , 'user']))->paginate(7)->withQueryString() //filter(request(['search'])) ini untuk memanggil scope filter yang ada di model Post 
        ]);
    }

    public function show(Post $post){
        return view('post',[
            "title" => "Single Post",
            "active" => "posts",
            "post" => $post
        ]);
    }
}
