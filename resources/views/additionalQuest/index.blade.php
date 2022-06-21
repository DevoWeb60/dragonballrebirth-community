@extends('layouts.app')

@section('content')
    <div class="container">
        <h2 class="title">Quêtes annexes</h2>
        <div class="story-container flex-galery">
            @foreach ($stories as $story)
                @include('layouts.additionalQuestCard', ['story' => $story])
            @endforeach
        </div>
    </div>
@endsection
