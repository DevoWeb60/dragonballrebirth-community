@extends('layouts.app')

@section('content')
    <div class="container various">
        <h2 class="title">Divers </h2>
        <section>
            <h2 class="title">Personnages</h2>
            <div>
                @foreach ($characters as $character)
                    <div>
                        <p>{{ $character->name }} <img src="{{ $character->avatar }}/transformations/base/head.png"
                                alt="{{ $character->name }}"></p>
                    </div>
                @endforeach
            </div>
            <a href="{{ route('character.index') }}">Plus d'info <i class="fa-solid fa-arrow-right-long"></i></a>
        </section>
        <section>
            <h2 class="title">Capsules</h2>
            <div>
                @foreach ($caps as $cap)
                    <div>
                        <p>{{ $cap->name }} <img src="{{ $cap->scarecities->icon }}" alt="{{ $cap->name }}"></p>
                    </div>
                @endforeach
            </div>
            <a href="{{ route('caps.index') }}">Plus d'info <i class="fa-solid fa-arrow-right-long"></i></a>
        </section>
        <section>
            <h2 class="title">Objets</h2>
            <div>
                @foreach ($objects as $object)
                    <div>
                        <p>{{ $object->name }} <img src="{{ $object->icon }}" alt="{{ $object->name }}">
                        </p>
                    </div>
                @endforeach
            </div>
            <a href="{{ route('object.index') }}">Plus d'info <i class="fa-solid fa-arrow-right-long"></i></a>
        </section>
        <section>
            <h2 class="title">Entrainements</h2>
            <div>
                @foreach ($trains as $train)
                    <div>
                        <p>{{ $train->name }}
                            @if (!empty($train->icon))
                                <img src="{{ $train->icon }}" alt="{{ $train->name }}">
                            @endif
                        </p>
                    </div>
                @endforeach
            </div>
            <a href="{{ route('train.index') }}">Plus d'info <i class="fa-solid fa-arrow-right-long"></i></a>
        </section>
        <section>
            <h2 class="title">Métiers</h2>
            <div>
                @foreach ($works as $work)
                    <div>
                        <p>{{ $work->name }}</p>
                    </div>
                @endforeach
            </div>
            <a href="{{ route('work.index') }}">Plus d'info <i class="fa-solid fa-arrow-right-long"></i></a>
        </section>
    </div>
@endsection
