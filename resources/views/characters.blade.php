@extends('layouts.app')

@section('content')
    <div class="container" id="character-section">
        <h2 class="title">Les personnages</h2>
        <div class="characters-container  flex-galery">
            @foreach ($characters as $character)
                @if(!$character->is_pnj)

                    <div class="character">
                        <div class="shadow">
                            <h2>{{$character->name}} <img src="{{$character->avatar}}transformations/base/head.png" alt="{{$character->name}}"></h2>
                            <div class="presentation">
                                <div class="avatar">
                                    <img src="{{$character->avatar}}avatars/1.png" alt="{{$character->name}}-avatar" >
                                </div>
                            </div>
                        </div>
                        <div class="story-unlock">
                            <h3>Débloquer</h3>
                                @if ($character->ruby_cost === 0 )
                                    <p>
                                        Étape N° <span class="step">{{$character->step_unlock}}</span>
                                    </p>
                                    <p>
                                        <span class="step">{{$character->story->story_name}}</span>
                                    </p>
                                @else
                                    <p>
                                        <span class="step">{{$character->ruby_cost}} <img src="https://www.dragonballrebirth.fr/css/images/ruby.svg" alt="rubis"></span>
                                    </p>
                                    <p>
                                        Boutique de Rubis
                                    </p>
                                @endif
                        </div>
                        <div class="caps">
                            <h3>Capsule  <img src="{{$capsIcon->icon}}" alt="{{$character->caps->name}}"> </h3>
                            <p>{{$character->caps->name}}</p>
                        </div>
                            <div class="categories">
                                <h3>Catégories</h3>
                                <ul>
                                    @if(count($character->category) !== 0)
                                        @foreach ($character->category as $category)
                                            <li>{{$category->name}}</li>
                                        @endforeach
                                    @else
                                        <li>Aucune</li>
                                    @endif
                                </ul>
                            </div>
                    </div>
                @endif
            @endforeach
        </div>
    </div>
@endsection
