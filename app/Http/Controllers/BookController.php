<?php

namespace App\Http\Controllers;
use App\Models\Book;

use Illuminate\Http\Request;

class BookController extends Controller
{
    public function index()
    {
        return view('books', [
            "title" => "Books",
            "active" => "books", //untuk menandakan bahwa halaman ini yang sedang aktif
            "books" => Book::all()
        ]);
    }

    public function show(Book $book)
    {
        return view('book', [
            "title" => "Single Book",
            "active" => "books",
            "book" => $book
        ]);
    }
}
