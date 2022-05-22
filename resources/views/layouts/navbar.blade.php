    <header>
        <h1>
            <a href="/">
                <img src="{{ asset('css/image/DBR-Logo.svg') }}" alt="Dragon Ball Rebirth - Communauté">
            </a>
        </h1>

        <nav>
            <ul>
                <li class="nav-link">
                    <a  href="/mode-aventure">Mode Aventure</a>
                    <ul>
                            @foreach (\App\Models\MainStory::all() as $mainStory)
                                    <li class="nav-link-dropdown"><a href="/mode-aventure/{{ $mainStory->id }}">{{ $mainStory->name }}</a></li>
                            @endforeach
                    </ul>
                </li>
                <li class="nav-link">
                    <a  href="/quetes-annexes">Quêtes Annexes</a>
                    <ul>
                        @foreach (\App\Models\Story::all() as $story)
                            @if ($story->main_story === 0)
                                <li class="nav-link-dropdown"><a href="/quetes-annexes/{{ $story->id }}">{{ $story->story_name }}</a></li>
                            @endif
                        @endforeach
                    </ul>
                </li>
                <li class="nav-link">
                    <a  href="/evenements">Évènements</a>
                    <ul>
                        <li class="nav-link-dropdown"><a href="/tournois-termine">Tournois terminé</a></li>
                        <li class="nav-link-dropdown"><a href="/tournois-a-venir">Tournois à venir</a></li>
                        <li class="nav-link-dropdown"><a href="/guerre-des-clans">Guerres des clans</a></li>
                    </ul>
                </li>
                <li class="nav-link">
                    <a  href="/divers">Divers</a>
                    <ul>
                        <li class="nav-link-dropdown"><a href="/personnages">Personnages</a></li>
                        <li class="nav-link-dropdown"><a href="/capsules">Capsules</a></li>
                        <li class="nav-link-dropdown"><a href="/objets">Objets</a></li>
                        <li class="nav-link-dropdown"><a href="/entrainements">Entrainement</a></li>
                        <li class="nav-link-dropdown"><a href="/metiers">Métiers</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
    </header>
