@extends('layouts.app')

@section('content')
<div class="container" id="character-section">
    <h2 class="title">Les personnages</h2>
    <div class="characters-container  flex-galery">
        @foreach ($characters as $character)
            <div class="character">
                <div class="shadow">
                    <h2>{{$character->name}} <img src="{{$character->avatar}}transformations/base/head.png" alt="{{$character->name}}"></h2>
                    <div class="presentation">
                        <div class="avatar">
                            <img src="{{$character->avatar}}/avatars/1.png" alt="{{$character->name}}-avatar">
                        </div>
                    </div>
                </div>
                <div class="story-unlock">
                    <h3>Débloquer</h3>
                    @foreach ($stories as $story)
                        @if ($character->ruby_cost === 0 && $character->story_id == $story->id)
                            <p>
                                Étape N° <span class="step">{{$character->step_unlock}}</span>
                            </p>
                            <p>
                                <span class="step">{{$story->story_name}}</span>
                            </p>
                        @endif
                    @endforeach
                        @if ($character->ruby_cost !== 0)
                            <p>
                                <span class="step">{{$character->ruby_cost}} rubis</span>
                            </p>
                            <p>
                                Boutique de Rubis
                            </p>
                        @endif
                </div>
                <div class="caps">
                    @foreach ($capsules as $capsule)
                        @if ($character->caps_id === $capsule->id)
                            <h3>Capsule  <img src="{{$capsScarecity->icon}}" alt="{{$capsule->name}}"> </h3>
                            <p>{{$capsule->name}}</p>
                        @endif
                    @endforeach
                </div>
            </div>
        @endforeach
    </div>
</div>

@endsection
