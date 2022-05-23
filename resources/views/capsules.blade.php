@extends('layouts.app')

@section('content')
    <div class="container">
        <h2 class="title">Les capsules</h2>
        <div class="capsules-container flex-galery">
            @foreach ($caps as $capsule)
                @if ($capsule->caps_scarecities_id !== 1)
                    <div class="capsule">
                        <h3>{{ $capsule->name }}</h3>
                        <h3 class="level">Niv. <span class="lvl-number">{{ $capsule->min_level }}</span> requis</h3>

                        @foreach ($capsScarecity as $scarecity)
                            @if ($capsule->caps_scarecities_id === $scarecity->id)
                            <div class="icon scarecity{{ $scarecity->id }}">
                                <img src="{{ $scarecity->icon }}" alt="{{ $scarecity->name }}">
                                <h4>{{ $scarecity->name }}</h4>
                            </div>
                            @endif
                        @endforeach

                        <div class="stats">
                            <h4>Stats
                                @if (!empty($capsule->bonus))
                                    <span class="bonus">{{ $capsule->bonus }}</span>
                                @endif
                                @if (!empty($capsule->malus))
                                    <span class="malus">{{ $capsule->malus }}</span>
                                @endif
                            </h4>
                                @if ($capsule->strength !== 0)
                                    <p class="strength {{ $capsule->strength > 0 ? "positive" : "negative" }}">
                                        <span class="attribute">Force </span> {{ $capsule->strength }}
                                    </p>
                                @endif
                                @if ($capsule->defense !== 0)
                                    <p class="defense {{ $capsule->defense > 0 ? "positive" : "negative" }}">
                                        <span class="attribute">Défense </span> {{ $capsule->defense }}
                                    </p>
                                @endif
                                @if ($capsule->energy !== 0)
                                    <p class="energy {{ $capsule->energy > 0 ? "positive" : "negative" }} ">
                                        <span class="attribute">Énergie </span> {{ $capsule->energy }}
                                    </p>
                                @endif
                                @if ($capsule->vitality !== 0)
                                    <p class="vitality {{ $capsule->vitality > 0 ? "positive" : "negative" }}">
                                        <span class="attribute">Vitalité </span> {{ $capsule->vitality }}
                                    </p>
                                @endif
                        </div>
                    </div>
                @endif
            @endforeach
        </div>
    </div>
@endsection
