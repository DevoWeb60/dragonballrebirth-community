@extends('layouts.app')

@section('content')
    <div class="container">
        <h2 class="title">{{ $story->story_name }}</h2>
        <div class="step-container">
            @foreach ($story->steps as $step)
                <div class="step">
                    <div class="step-number">
                        <h3>Étape {{ $step->step_number }}</h3>
                    </div>
                    <div class="thumbnail-container">
                        @if ($storyThumbnail)
                        <img class="thumbnail" src="{{ $storyThumbnail }}" alt="{{ $story->story_name }}">
                        @else
                            <img class="thumbnail" src="https://www.dragonballrebirth.fr/img/aventure/etapes/{{ $storyNumber }}/story-{{ $storyNumber }}-{{ $step->step_number }}.jpg" alt="{{ $story->story_name }}" >
                        @endif
                        <div class="location">
                            <p>{{ $step->planet->planet }} <img src="{{ $step->planet->icon }}" alt="{{ $step->planet->planet }}"></p>
                            <p>{{ $step->mapCase->case }}</p>
                        </div>
                    </div>
                    <div class="conditions">
                        @foreach ($step->conditions as $condition)
                            @if ($condition->condition_base_id)
                                <p class="condition">{{ $condition->realName->condition }}
                                    @if (!empty($condition->realName->icon))
                                        &nbsp;<i class="{{ $condition->realName->icon }}"></i>
                                    @endif
                                </p>
                                <hr>
                            @endif
                            @if ($condition->custom_condition)
                                <p class="condition">{{ $condition->custom_condition }}</p>
                                <hr>
                            @endif
                            @if ($condition->any_trains_quantity && !$condition->special_trains)
                                <p class="condition">Faire <span class="number">{{ $condition->any_trains_quantity }}</span> entrainements&nbsp;<i class="fa-solid fa-dumbbell"></i></p>
                                <hr>
                            @endif
                            @if ($condition->special_trains)
                            <p class="condition">
                                {{ $condition->train->name }}
                                @if (!empty($condition->train->icon))
                                    <img src="{{ $condition->train->icon }}" alt="{{ $condition->train->name }}" />
                                @endif
                            </p>
                            <hr>
                            @endif
                            @if ($condition->special_trains && $condition->any_trains_quantity)
                                <p class="condition">
                                    Faire <span class="number">{{ $condition->any_trains_quantity }}</span> fois l'entrainement "{{ $condition->train->name }}"
                                </p>
                                <hr>
                            @endif
                            @if ($condition->object_harvest)
                                <p class="condition">Récupérer <span class="number">{{ number_format($condition->object_harvest_quantity, 0, ' ', ' ') }}</span> {{ $condition->object->name }}
                                    &nbsp;<img src="{{ $condition->object->icon }}" alt="{{ $condition->object->name }}" />
                                </p>
                                <hr>
                            @endif
                            @if ($condition->spell_condition_number)
                                <p class="condition">Utiliser l'attaque de Magie {{ $condition->spell_condition_number }}</p>
                                <hr>
                            @endif
                            @if ($condition->critical_strike)
                                <p class="condition">Effectuer un coup critique&nbsp;<i class="fas fa-bolt"></i></p>
                                <hr>
                            @endif
                            @if ($condition->dodge_attack)
                                <p class="condition">Esquiver une attaque&nbsp;<i class="fas fa-shield-alt"></i></p>
                                <hr>
                            @endif
                            @if ($condition->min_damage)
                                <p class="condition">Infliger au moins <span class="number">{{ $condition->min_damage }}</span> dégâts&nbsp;<i class="fa-solid fa-bullseye"></i></p>
                                <hr>
                            @endif
                        @endforeach
                    </div>
                    @if ($step->enemy)
                    <div class="fight">
                        <h2 class="player">
                            <span>
                                {{ $step->character->name }}
                                <img src="{{ $step->character->avatar }}/transformations/base/head.png" alt="{{ $step->character->name }}">
                            </span>
                        </h2>
                        <span class="versus">VS</span>
                        <h2 class="enemy">
                            <span>
                                {{ $step->enemy->name }}
                                <img src="{{ $step->enemy->avatar }}/transformations/base/head.png" alt="{{ $step->enemy->name }}">
                            </span>
                            <span class="info">Niveau : {{ $step->enemy_level }}</span>
                            <span class="info">Vitalité : {{ number_format($step->enemy_health, 0, ' ', ' ') }}</span>
                        </h2>
                    </div>
                    @else
                        <h2 class="nofight-character player">
                            {{ $step->character->name }}
                            <img src="{{ $step->character->avatar }}/transformations/base/head.png" alt="{{ $step->character->name }}">
                        </h2>
                    @endif

                    <div class="rewards">
                        <h3>Récompense</h3>
                        @foreach ($step->rewards as $reward)
                            @if ($reward->zenis)
                                <p class="reward-zenis">{{ number_format($reward->zenis, 0, ' ', ' ') }} <span class="zenis">@include('svg.zenis')</span></p>
                            @endif
                            @if ($reward->character_id)
                                <p class="reward-character">{{ $reward->character->name }}
                                    <img src="{{ $reward->character->avatar }}/transformations/base/head.png" alt="{{$reward->character->name}}">
                                </p>
                            @endif
                            @if ($reward->object_id)
                                <p class="reward-object">{{ $reward->object->name }}
                                    &nbsp;<img src="{{ $reward->object->icon}}" alt="{{$reward->object->name}}" />&nbsp;
                                    {{ $reward->quantity_object > 1 ? "x".$reward->quantity_object : null}}
                                </p>
                            @endif
                            @if ($reward->caps_id)
                                <p class="reward-caps">{{ $reward->caps->name }}
                                    <img src="{{ $reward->caps->scarecities->icon}}" alt="{{ $reward->caps->name }}" />
                                    {{ $reward->quantity_caps > 1 ? "x".$reward->quantity_caps : null}}
                                </p>
                            @endif
                            @if ($reward->experience)
                                <p class="reward-character">
                                    {{ $reward->experience >= 100 ? number_format($reward->experience, 0, " ", " ") : $reward->experience."%"}} XP pour {{ $reward->rewardsOnCharacter->name }}
                                    <img src="{{ $reward->rewardsOnCharacter->avatar }}/transformations/base/head.png" alt="{{ $reward->rewardsOnCharacter->name}}">
                                </p>
                            @endif
                            @if ($reward->skin)
                                <p class="reward-character">
                                    Skin pour {{ $reward->rewardsOnCharacter->name }}
                                    <img src="{{ $reward->rewardsOnCharacter->avatar }}/transformations/base/head.png" alt="{{ $reward->rewardsOnCharacter->name}}">
                                </p>
                            @endif
                        @endforeach
                    </div>
                </div>
            @endforeach
        </div>
    </div>
    @endsection

    {{-- @foreach ($step->conditions as $condition)
        <span>{{ $condition->realName->condition }}</span>
    @endforeach --}}
