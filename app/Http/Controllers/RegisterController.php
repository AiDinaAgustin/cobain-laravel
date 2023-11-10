<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;

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
       $validatedData = $request->validate([
        'name' => 'required|max:255',
        'username' => 'required|min:3|max:255|unique:users',
        'email'=> 'required|email:dns|unique:users',
        'password'=> 'required|min:5|max:255'
       ]);

       //password akan di hash
       $validatedData['password'] = bcrypt($validatedData['password']);

       //jika validate diatas lolos maka akan dijalankan code dibawah ini
       $user = User::create($validatedData);

        // $request->session()->flash('success', 'Registration successfull! Please login');

       return redirect('/login')->with('success', 'Registration successfull! Please login');
}
}
