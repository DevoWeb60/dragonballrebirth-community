@extends('layouts.app')

@section('content')
    <div class="container">
        <h2 class="title">Histoire principales</h2>
        @foreach ($mainStories as $mainStory)
            <div class="mainStory">
                <h2>{{ $mainStory->name }}</h2>
                <div class="saga-container flex-galery">
                    @foreach ($mainStory->saga as $saga)
                    <a href="/" class="saga" style="background-image:linear-gradient(to top, rgba(0,0,0,0.7), rgba(0,0,0,0.9)), url({{ $saga->thumbnail }})">
                        <div>
                            <h3>{{ $saga->story_name }}</h3>
                            <div class="unlock">
                                <h4>Déblocage</h4>
                                @if ($saga->step_unlock !== 0)
                                <p>Étape {{ $saga->step_unlock }}</p>
                                @endif
                                @if (!empty($saga->custom_requirement))
                                <p>{{ $saga->custom_requirement }}</p>
                                @else
                                <p>{{ $saga->storyUnlock->story_name }}</p>
                                @endif
                            </div>
                        </div>
                    </a>
                    @endforeach
                </div>
            </div>
        @endforeach
    </div>
@endsection
