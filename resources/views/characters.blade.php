@extends('layouts.app')

@section('content')
    <div class="container" id="character-section">
        <h2 class="title">Les personnages</h2>
        <div class="characters-container  flex-galery">
            @foreach ($characters as $character)
                @include('layouts.characterCard', ['character' => $character])
            @endforeach
        </div>
    </div>
@endsection
