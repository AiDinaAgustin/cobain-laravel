@extends('layouts.main')

@section('container')
<article>
<h2>{{ $book->judul}}</h2>
<h6>{{ $book->penulis }} | {{ $book->penerbit }}</h6>
{!! $book->deskripsi !!}
</article>

<a href="/books">Back to Buku</a>
@endsection

