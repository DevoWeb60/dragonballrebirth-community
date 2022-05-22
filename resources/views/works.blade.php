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
                            @foreach ($objects as $object)
                                @if ($work->object_id === $object->id)
                                    <p>{{ $object->name }} <img src="{{ $object->icon }}" alt="{{ $object->name }}"></p>
                                @endif
                            @endforeach
                        </div>
                        <div class="using">
                            <h3>Utilité</h3>
                            <p>{{ $work->utils }}</p>
                        </div>
                    </div>

                    {{-- !ABSOLUTE --}}
                    <div class="duration">
                        @foreach ($waitingDurations as $waitingDuration)
                            @if ($work->waiting_duration_id === $waitingDuration->id)
                                <h3>
                                    {{ $waitingDuration->duration }}
                                </h3>
                            @endif
                        @endforeach
                    </div>
                    <div class="location">
                        @foreach ($planets as $planet)
                            @if ($work->planet_id === $planet->id)
                                <div class="planet">
                                    <img src="{{ $planet->icon }}" alt="{{ $planet->planet }}">
                                    <h4>{{ $planet->planet }}</h4>
                                </div>
                            @endif
                        @endforeach
                        @foreach ($mapCases as $mapCase)
                            @if ($work->map_case_id === $mapCase->id)
                                <div class="case">
                                    <h4>{{ $mapCase->case }}</h4>
                                </div>
                            @endif
                        @endforeach
                    </div>
                </div>
            @endforeach
        </div>
    </div>
@endsection
