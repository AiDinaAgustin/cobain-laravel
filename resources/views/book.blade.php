@extends('layouts.main')

@section('container')
<article>
<h2>{{ $book->judul}}</h2>
{!! $book->deskripsi !!}
</article>

<a href="/books">Back to Buku</a>
@endsection

