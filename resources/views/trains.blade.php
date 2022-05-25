@extends('layouts.app')

@section('content')
    <div class="container">
        <h2 class="title">Les entrainements</h2>
        <div class="trains-container flex-galery">
            @foreach ($trains as $train)
                <div class="train" style="background-image: linear-gradient(to top, rgba(0,0,0,0.7), rgba(0,0,0,0.9)), url({{ $train->thumbnail }})">
                    <h2>{{ $train->name }}
                        @if (!empty($train->icon))
                            <img src="{{ $train->icon }}" alt="{{ $train->name }}" />
                        @endif
                    </h2>
                    <div class="content">
                        @if (!empty($train->required_level))
                            <h4><span class="attribute">Niveau requis</span> {{ $train->required_level }}</h4>
                        @endif
                        <h4><span class="attribute">Débloquer à l'étape </span> {{ $train->step_id }}</h4>
                        <h4><span class="attribute">Gain</span> {{ $train->gain }}</h4>
                    </div>

                    {{-- !ABSOLUTE --}}
                    <div class="duration">
                        <h3>{{ $train->duration->duration }}</h3>
                    </div>
                    <div class="location">
                        <div class="planet">
                            <img src="{{ $train->planet->icon }}" alt="{{ $train->planet->planet }}">
                            <h4>{{ $train->planet->planet }}</h4>
                        </div>
                        <div class="case">
                            <h4>{{ $train->mapCase->case }}</h4>
                        </div>
                    </div>
                </div>
            @endforeach
        </div>
    </div>
@endsection
