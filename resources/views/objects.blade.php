@extends('layouts.app')

@section('content')
    <div class="container">
        <h2 class="title">Les objets</h2>
        <div class="objects-container flex-galery">
            @foreach ($objects as $object)
                <div class="object">
                    <img src="{{ $object->icon }}" alt="{{ $object->name }}">
                    <h3>
                        {{ $object->name }}
                        <br><span class="min">
                            {{ $object->consumable == 1 ? 'Consommable' : null }}
                        </span>

                    </h3>
                    <div class="content">
                        @if (!empty($object->description))
                            <div class="description">
                                <h5>Description </h5>
                                <p>
                                    {{ $object->description }}
                                </p>
                            </div>
                        @endif
                        @if (!empty($object->using))
                            <div class="using">
                                <h5>Usage </h5>
                                <p>
                                    {{ $object->using }}
                                </p>
                            </div>
                        @endif
                        <div class="duration">
                            <h5>Durée</h5>
                            <p>
                                {{ $object->duration->duration }}
                            </p>
                        </div>
                    </div>
                </div>
            @endforeach
        </div>
    </div>
@endsection
