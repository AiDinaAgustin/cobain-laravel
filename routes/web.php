<?php


use App\Models\Book;
use App\Models\Post;
use App\Models\User;
use App\Models\Category;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\BookController;
use App\Http\Controllers\PostController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\DashboardPostController;
use App\Http\Controllers\RegisterController;

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

// Route::get('categories/{category:slug}', function(Category $category){
//     return view('posts',[
//         "title" => "Post By Category : $category->name",
//         "active" => "categories",
//         "posts" => $category->posts->load('category', 'user')
//     ]);
// });

// Route::get('/authors/{user:username}', function (User $user) {
//     return view('posts', [
//         'title' => "Post By Author : $user->name",
//         'active' => 'posts',
//         'posts' => $user->posts->load('category', 'user')
//     ]);
// });


// login
route::get('/login', [LoginController::class, 'index'])->name('login')->middleware('guest'); 
route::post('/login', [LoginController::class, 'authenticate']); 

//logout
Route::post('/logout', [LoginController::class,'logout']);


// register
Route::get('/register', [RegisterController::class,'index'])->middleware('guest');

Route::post('/register', [RegisterController::class,'store']);


Route::get('/dashboard', function(){
    return view('dashboard.index',[
        "title" => "Dashboard",
        "active" => "dashboard"
    ]);
})->middleware('auth');

Route::get('/dashboard/posts/checkSlug', [DashboardPostController::class, 'checkSlug'])->middleware('auth');

Route::resource('/dashboard/posts', DashboardPostController::class)->middleware('auth');

