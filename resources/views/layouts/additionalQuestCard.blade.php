@if ($story->visible == 1)
    <a href="{{ route('additionalQuest.show', ['story' => $story->id]) }}" class="story"
        style="background-image: linear-gradient(to top, rgba(0,0,0,0.7), rgba(0,0,0,0.9)), url({{ $story->thumbnail }})">
        <div>
            <h3>{{ $story->story_name }}</h3>
            <div class="unlock">
                <h4>Déblocage</h4>
                @if (!empty($story->step_unlock != 0))
                    <p>Étape {{ $story->step_unlock }}</p>
                @endif
                @if (!empty($story->custom_requirement))
                    <p>{{ $story->custom_requirement }}</p>
                @else
                    <p>{{ $story->storyUnlock->story_name }}</p>
                @endif
            </div>
        </div>
    </a>
@endif
