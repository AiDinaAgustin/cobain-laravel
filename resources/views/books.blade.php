@extends('layouts.main')

@section('container')

@foreach ($books as $book)
    <article>
        <h2>
            <a href="/books/{{ $book->slug}}">{{ $book->judul}}</a>
        </h2>
        <h6>{{ $book->penulis }} | {{ $book->penerbit }}</h6>
        {!! $book->deskripsi !!}
    </article>

    
@endforeach

@endsection