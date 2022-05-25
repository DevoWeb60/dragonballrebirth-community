@extends('layouts.app')

@section('content')
    <div class="container">
        <h2 class="title">Les métiers</h2>
        <div class="container flex-galery">
            @foreach ($works as $work)
                <div class="work" style="background-image: linear-gradient(to top, rgba(0,0,0,0.7), rgba(0,0,0,0.9)), url({{ $work->thumbnail }})">
                    <h2>{{ $work->name }}</h2>
                    <div class="content">
                        <div class="gain">
                            <h3>Obtiens</h3>
                            <p>{{ $work->object->name }} <img src="{{ $work->object->icon }}" alt="{{ $work->object->name }}"></p>
                        </div>
                        <div class="using">
                            <h3>Utilité</h3>
                            <p>{{ $work->utils }}</p>
                        </div>
                    </div>
                    {{-- !ABSOLUTE --}}
                    <div class="duration">
                        <h3>
                            {{ $work->duration->duration }}
                        </h3>
                    </div>
                    <div class="location">
                        <div class="planet">
                            <img src="{{ $work->planet->icon }}" alt="{{ $work->planet->planet }}">
                            <h4>{{ $work->planet->planet }}</h4>
                        </div>
                        <div class="case">
                            <h4>{{ $work->mapCase->case }}</h4>
                        </div>
                    </div>
                </div>
            @endforeach
        </div>
    </div>
@endsection
