@extends('layouts.main')

@section('container')

@foreach ($books as $book)
    <article>
        <h2>
            <a href="/books/{{ $book->slug}}">{{ $book->judul}}</a>
        </h2>
        {!! $book->deskripsi !!}
    </article>

    
@endforeach

@endsection