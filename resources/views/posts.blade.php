
@extends('layouts.main')

@section('container')
  <h1 class="mb-3 text-center">{{ $title }}</h1>

  <div class="row justify-content-center mb-3">
    <div class="col-md-6">
      <form action="/posts">

        @if (request('category'))
            <input type="hidden" name="category" value="{{ request('category') }}">

            {{-- program diatas digunakan untuk menyimpan data category yang diinputkan di form search agar tidak hilang ketika 
            di submit dan diarahkan ke halaman posts lagi, value nya diambil dari request('category') yang diambil dari 
            name="category" di form search value digunakan untuk menyimpan data category yang diinputkan di form search agar 
            tidak hilang ketika di submit dan diarahkan ke halaman posts lagi, value nya diambil dari request('category') yang 
            diambil dari name="category" di form search --}}

        @endif
        @if (request('user'))
            <input type="hidden" name="user" value="{{ request('user') }}">

        @endif

        <div class="input-group mb-3">
          <input type="text" class="form-control" placeholder="Search..." name="search" value="{{ request('search') }}">
          {{-- value="{{ request('search') }}" dipakai agar history pencarian tidak hilang di form search --}}
          <button class="btn btn-danger" type="submit">Search</button>
        </div>
      </form>
    </div>
  </div>
@if ($posts->count())
    
<div class="card mb-3">
    <img src="https://source.unsplash.com/1200x400?{{ $posts[0]->category->name }}" class="card-img-top" alt="{{ $posts[0]->category->name }}">
    <div class="card-body text-center">
      <h3 class="card-title"><a href="/posts/{{ $posts[0]->slug}}" class="text-decoration-none text-dark">{{ $posts[0]->title }}</a></h3> 
      {{-- untuk mengambil index 0 atau postingan terakhir menggunakan [0]--}}
    <p>
        <small class="text-body-secondary">
        By : <a href="/posts?user={{ $posts[0]->user->username }}" class="text-decoration-none">{{ $posts[0]->user->name }}</a>
         in <a href="/posts?category={{ $posts[0]->category->slug }}" class="text-decoration-none">{{ $posts[0]->category->name }}</a> {{ $posts[0]->created_at->diffForHumans() }}
        {{-- diffForHumans digunakan untuk menampilkan waktu yang sudah berlalu dari waktu postingan dibuat biar gampang dibaca oleh manusia --}}
        </small>
    </p>
      <p class="card-text">{{ $posts[0]->excerpt }}</p>
      <p><a href="/posts/{{ $posts[0]->slug}}" class="text-decoration-none btn btn-primary">Read more</a></p>
    </div>
  </div>
   


    <div class="container">
        <div class="row">
            @foreach ($posts->skip(1) as $post)
            <div class="col-md-4 mb-3">
                <div class="card">
                    <div class="position-absolute px-3 py-2 text-white" style="background-color: rgba(0,0,0,0.7)">
                        <a href="/posts?category={{ $post->category->slug }}" class="text-decoration-none text-white">{{ $post->category->name }}</a></div>
                    <img src="https://source.unsplash.com/500x400?{{ $post->category->name }}" class="card-img-top" alt="{{ $post->category->name }}">
                    <div class="card-body">
                      <h5 class="card-title"><a href="#" class="text-decoration-none text-dark">{{ $post->title}}</a></h5>
                      <p>
                        <small class="text-body-secondary">
                        By : <a href=" {{ $post->user ? '/posts?user='.$post->user->username : '#' }}" class="text-decoration-none">{{ $post->user->name ?? 'None' }}</a> {{ $post->created_at->diffForHumans() }}
                        {{-- diffForHumans digunakan untuk menampilkan waktu yang sudah berlalu dari waktu postingan dibuat biar gampang dibaca oleh manusia --}}
                        </small>
                    </p>
                      <p class="card-text">{!! $post->excerpt !!}</p>
                      <a href="/posts/{{ $post->slug}}" class="btn btn-primary">Read more</a>
                    </div>
                  </div>
            </div>
            @endforeach
        </div>
    </div>
    @else
    <p class="text-center fs-4">No post found.</p>
@endif

<div class="d-flex justify-content-end">
  {{ $posts->links() }}
</div>

@endsection

