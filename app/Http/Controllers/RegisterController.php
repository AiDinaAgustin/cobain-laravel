<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class RegisterController extends Controller
{
    public function index(){
        return view("register.index", [
            "title" => "Register",
            "active" => "register"
        ]);
    }

    public function store(Request $request)
    {
       //membuat rule atau peraturan validasi dalam pengisian registtrasi
       $request->validate([
        'name' => 'required|max:255',
        'username' => 'required|min:3|max:255|unique:users',
        'email'=> 'required|email:dns|unique:users',
        'password'=> 'required|min:5|max:255'
       ]);

       //jika validate diatas lolos maka akan dijalankan code dibawah ini
       dd('registrasi berhasil');
    }
}
