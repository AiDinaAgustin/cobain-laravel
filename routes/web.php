<?php

use App\Http\Controllers\PostController;
use App\Models\Post;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\BookController;
use App\Models\Book;
use App\Models\Category;
use App\Models\User;
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
        "title" => "Home"
    ]);
});

Route::get('/about', function () {
    return view('about', [
        "title" => "About",
        "name" => "Ai Dina Agustin",
        "email" => "aidinaagustin2@gmail.com",
        "image" => "img/dina.png"

    ]);
});

Route::get('/posts', [PostController::class, 'index']);

Route::get('posts/{post:slug}', [PostController::class,'show']);

Route::get('/books', [BookController::class, 'index']);

Route::get('books/{book:slug}', [BookController::class,'show']);

Route::get('/categories/{category:slug}', function (Category $category) {
    return view('category', [
        'title' => $category->name,
        'posts' => $category->posts,
        'category' => $category->name,
    ]);
}); 

Route::get('/categories', [CategoryController::class, 'index']);

Route::get('categories/{category:slug}', [CategoryController::class,'show']);

Route::get('/authors/{user:username}', function (User $user) {
    return view('posts', [
        'title' => 'Post by Author',
        'posts' => $user->posts,
    ]);
});

