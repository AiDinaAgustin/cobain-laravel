<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class LoginController extends Controller
{
    public function index()
    {
        return view('login.index', [
            "title" => "Login",
            "active" => "login"]);
    }

    public function authenticate(Request $request)
    {
        $credentials = $request->validate([
            'email' => ['required', 'email:dns'],
            'password' => ['required'],
        ]);

        //jika validasi gagal maka akan kembali ke halaman login dan menampilkan error
        //attempt digunakan untuk login
        //session()->regenerate() digunakan untuk menghapus session yang lama dan membuat session yang baru
        //intended digunakan untuk mengarahkan ke halaman sebelumnya
        if (auth()->attempt($credentials)) {
            $request->session()->regenerate();
            return redirect()->intended('/dashboard');
        }

        return back()->with('loginError', 'Login failed!');
    }
}
