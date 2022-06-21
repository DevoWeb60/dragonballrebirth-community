@extends('layouts.app')

@section('content')
    <div class="container">
        <h2 class="title">Histoire principales</h2>
        @foreach ($mainStories as $mainStory)
            @if ($mainStory->id < 100)
                <div class="mainStory">
                    <h2>{{ $mainStory->name }}</h2>
                    <div class="saga-container flex-galery">
                        @foreach ($mainStory->saga as $saga)
                            @include('layouts.adventureModeCard', ['saga' => $saga])
                        @endforeach
                    </div>
                </div>
            @endif
        @endforeach
    </div>
@endsection
