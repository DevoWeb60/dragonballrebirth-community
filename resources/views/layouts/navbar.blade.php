    <header>
        <h1>
            <a href="{{ route('home.index') }}">
                <img src="{{ asset('css/image/DBR-Logo.svg') }}" alt="Dragon Ball Rebirth - Communauté">
            </a>
        </h1>

        <nav>
            <ul>
                <li class="nav-link">
                    <a href="{{ route('adventureMode.index') }}">Mode Aventure</a>
                </li>
                <li class="nav-link">
                    <a href="{{ route('additionalQuest.index') }}">Quêtes Annexes</a>
                    <ul>
                        @foreach (\App\Models\Story::all() as $story)
                            @if ($story->main_story === 100)
                                <li class="nav-link-dropdown"><a
                                        href="{{ route('additionalQuest.show', ['story' => $story->id]) }}">{{ $story->story_name }}</a>
                                </li>
                            @endif
                        @endforeach
                    </ul>
                </li>
                <li class="nav-link">
                    {{-- <a href="/evenements">Évènements</a> --}}
                    <a href="#">Évènements</a>
                    <ul>
                        <li class="nav-link-dropdown"><a href="#" disabled>A venir</a></li>
                        {{-- <li class="nav-link-dropdown"><a href="/tournois-termine">Tournois terminé</a></li>
                        <li class="nav-link-dropdown"><a href="/tournois-a-venir">Tournois à venir</a></li>
                        <li class="nav-link-dropdown"><a href="/guerre-des-clans">Guerres des clans</a></li> --}}
                    </ul>
                </li>
                <li class="nav-link">
                    <a href="#">Divers</a>
                    <ul>
                        <li class="nav-link-dropdown"><a href="{{ route('character.index') }}">Personnages</a></li>
                        <li class="nav-link-dropdown"><a href="{{ route('caps.index') }}">Capsules</a></li>
                        <li class="nav-link-dropdown"><a href="{{ route('object.index') }}">Objets</a></li>
                        <li class="nav-link-dropdown"><a href="{{ route('train.index') }}">Entrainement</a></li>
                        <li class="nav-link-dropdown"><a href="{{ route('work.index') }}">Métiers</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
    </header>
