@if ($saga->visible === 1)
    <a href="{{ route('adventureMode.show', ['story' => $saga->id]) }}"
        class="saga {{ $mainStory->id === 1 ? 'normal' : null }} {{ $mainStory->id === 2 ? 'hard' : null }}"
        style="background-image:linear-gradient(to top, rgba(0,0,0,0.7), rgba(0,0,0,0.9)), url({{ $saga->thumbnail }})">
        <div>
            <h3>{{ $saga->story_name }}</h3>
            <div class="unlock">
                <h4>Déblocage</h4>
                @if ($saga->step_unlock !== 0)
                    <p>Étape {{ $saga->step_unlock }}</p>
                @endif
                @if (!empty($saga->custom_requirement))
                    <p>{{ $saga->custom_requirement }}</p>
                @else
                    <p>{{ $saga->storyUnlock->story_name }}</p>
                @endif
            </div>
        </div>
    </a>
@endif
