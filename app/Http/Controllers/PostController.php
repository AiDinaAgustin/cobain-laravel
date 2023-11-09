<?php

namespace App\Http\Controllers;
use App\Models\Post;

use Illuminate\Http\Request;

class PostController extends Controller
{
    public function index(){

        // dd(request('search'));//mengambil data dari url
        //sekarang akan ada kondisi dulu search atau tidak
    
        return view('posts',[
            "title" => "All Posts",
            "active" => "posts",
            "posts" => Post::latest()->filter(request(['search']))->get() //filter(request(['search'])) ini untuk memanggil scope filter yang ada di model Post 
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
