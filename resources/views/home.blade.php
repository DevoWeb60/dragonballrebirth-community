@extends('layouts.app')

@section('content')
    <div class="container">
        <h2 class="title">Bienvenue ! </h2>
        <div class="news-container">
            <h2 class="news-title">Le retour !</h2>
            <p class="news-content">
                Le site communautaire est de retour, plus design et avec de nombreux axes d'amélioration possible pour
                élaborer petit à petit un guide ultime peu importe ton niveau.

                Certaines pages sont encore en construction, comme celle-ci, mais quasiment toute les données qui étaient
                disponibles sur l'ancien site, le sont également ici.
            </p>
        </div>
        <div class="events-container">
            <h2 class="news-title">Les évènements</h2>
            <h2 class="title">A VENIR</h2>
        </div>
        <div class="last-container">
            <h2 class="news-title">Les nouveautés</h2>
            <div class="news-content flex-galery">
                <div class="character-container">
                    <h3>Dernier personnage</h3>
                    @include('layouts.characterCard', ['character' => $character])
                </div>
                <div class="story-container">
                    <div>
                        <h3>Dernière saga</h3>
                        @include('layouts.adventureModeCard', [
                            'saga' => $story,
                            'mainStory' => $mainStory,
                        ])
                    </div>
                    <div>
                        <h3>Dernière quêtes annexes</h3>
                        @include('layouts.additionalQuestCard', ['story' => $additionalQuest])
                    </div>
                </div>
            </div>
        </div>
        <div class="team-container">
            <h2 class="sub-title">L'équipe</h2>
            <div class="team flex-galery">
                @foreach ($users as $user)
                    <div class="card">
                        @if (!empty($user->picture))
                            <img src="{{ asset('storage/users/' . $user->picture) }}" alt="">
                        @endif
                        <div class="info">
                            <h3>
                                {{ $user->name }}
                            </h3>
                            @if (!empty($user->role))
                                <h4>{{ $user->role }}</h4>
                            @endif
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </div>
@endsection
