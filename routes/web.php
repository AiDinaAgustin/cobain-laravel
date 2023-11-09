<?php

use App\Models\Book;
use App\Models\Post;
use App\Models\Category;
use App\Models\User;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\BookController;
use App\Http\Controllers\PostController;
use App\Http\Controllers\CategoryController;



/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('home',[
        "title" => "Home",
        "active" => "home"
    ]);
});

Route::get('/about', function () {
    return view('about', [
        "title" => "About",
        "active" => "about",
        "name" => "Ai Dina Agustin",
        "email" => "aidinaagustin2@gmail.com",
        "image" => "img/dina.png"

    ]);
});

Route::get('/posts', [PostController::class, 'index']);

Route::get('posts/{post:slug}', [PostController::class,'show']);

Route::get('/books', [BookController::class, 'index']);

Route::get('books/{book:slug}', [BookController::class,'show']);

Route::get('/categories', [CategoryController::class, 'index']);

Route::get('categories/{category:slug}', function(Category $category){
    return view('posts',[
        "title" => "Post By Category : $category->name",
        "active" => "categories",
        "posts" => $category->posts->load('category', 'user')
    ]);
});

Route::get('/authors/{user:username}', function (User $user) {
    return view('posts', [
        'title' => "Post By Author : $user->name",
        'active' => 'posts',
        'posts' => $user->posts->load('category', 'user')
    ]);
});

