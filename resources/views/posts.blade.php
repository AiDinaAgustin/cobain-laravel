
@extends('layouts.main')

@section('container')
<h1 class="mb-5">{{ $title }}</h1>
@if ($posts->count())
    
<div class="card mb-3">
    <img src="https://source.unsplash.com/1200x400/?{{ $posts[0]->category->name }}" class="card-img-top" alt="...">
    <div class="card-body text-center">
      <h3 class="card-title"><a href="/posts/{{ $posts[0]->slug}}" class="text-decoration-none text-dark">{{ $posts[0]->title }}</a></h3> 
      {{-- untuk mengambil index 0 atau postingan terakhir menggunakan [0]--}}
    <p>
        <small class="text-body-secondary">
        By : <a href=" {{ $posts[0]->user ? '/authors/'.$posts[0]->user->username : '#' }}" class="text-decoration-none">{{ $posts[0]->user->name ?? 'None' }}</a> in <a href="/categories/{{ $posts[0]->category->slug }}" class="text-decoration-none">{{ $posts[0]->category->name }}</a> {{ $posts[0]->created_at->diffForHumans() }}
        {{-- diffForHumans digunakan untuk menampilkan waktu yang sudah berlalu dari waktu postingan dibuat biar gampang dibaca oleh manusia --}}
        </small>
    </p>
      <p class="card-text">{{ $posts[0]->excerpt }}</p>
      <p><a href="/posts/{{ $posts[0]->slug}}" class="text-decoration-none btn btn-primary">Read more</a></p>
    </div>
  </div>
   
@else
    <p class="text-center fs-4">No post found.</p>
@endif
    
    @foreach ($posts as $post)
    <article class="mb-5 border-bottom pb-4">
        
        <h2>
            <a href="/posts/{{ $post->slug}}" class="text-decoration-none">{{ $post->title}}</a>
        </h2>
        <p>By : <a href=" {{ $post->user ? '/authors/'.$post->user->username : '#' }}" class="text-decoration-none">{{ $post->user->name ?? 'None' }}</a> in <a href="/categories/{{ $post->category->slug }}" class="text-decoration-none">{{ $post->category->name }}</a></p>
        {!! $post->excerpt !!}

        <p><a href="/posts/{{ $post->slug}}" class="text-decoration-none">Read more...</a></p>
    </article>
    @endforeach

@endsection

