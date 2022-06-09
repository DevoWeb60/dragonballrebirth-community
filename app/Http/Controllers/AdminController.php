<?php

namespace App\Http\Controllers;

use App\Models\Caps;
use App\Models\Work;
use App\Models\Story;
use App\Models\Planet;
use App\Models\MapCase;
use App\Models\Rewards;
use App\Models\Character;
use App\Models\MainStory;
use App\Models\ObjectItem;
use App\Models\WinCondition;
use Illuminate\Http\Request;
use App\Models\AdventureMode;
use App\Models\CapsScarecity;
use App\Models\ObjectDuration;
use App\Models\CharacterCategory;
use App\Models\Train;
use Illuminate\Support\Facades\Auth;

class AdminController extends Controller
{
    public function index()
    {

        return view('dashboard.home');
    }

    public function api()
    {
        $characters = Character::orderBy('is_pnj')->orderBy('ruby_cost')->orderBy('main_story_id')->orderBy('story_id')->orderBy('step_unlock')->get();
        $stories = Story::all();
        $mainStories = MainStory::all();
        $caps = Caps::all();
        $categories = CharacterCategory::all();
        $steps = AdventureMode::all();
        $capsScarecities = CapsScarecity::all();
        $mapCase = MapCase::all();
        $objectDurations = ObjectDuration::all();
        $objects = ObjectItem::all();
        $planets = Planet::all();
        $rewards = Rewards::all();
        $winConditions = WinCondition::all();
        $works = Work::all();
        $trains = Train::all();

        foreach ($mainStories as $mainStory) {
            $mainStory->saga;
        }

        foreach ($stories as $story) {
            $story->storyUnlock;
            $story->steps;
        }

        foreach ($trains as $train) {
            $train->planet;
            $train->mapCase;
            $train->duration;
        }

        foreach ($works as $work) {
            $work->object;
            $work->planet;
            $work->mapCase;
            $work->duration;
        }

        foreach ($winConditions as $winCondition) {
            $winCondition->realName;
            $winCondition->train;
            $winCondition->object;
        }

        foreach ($objects as $object) {
            $object->duration;
        }

        foreach ($steps as $step) {
            $step->planet;
            $step->conditions;
            $step->rewards;
            $step->mapCase;
            $step->character;
            $step->enemy;
        }

        foreach ($caps as $cap) {
            $cap->scarecities;
            $cap->character;
        }

        foreach ($characters as $character) {
            $character->caps;
            $character->story;
            $character->main_story;
            $character->category;
            $character->scarecities = CapsScarecity::find(1);
        }

        return response()->json([
            "characters" => $characters,
            "stories" => $stories,
            "mainStories" => $mainStories,
            "caps" => $caps,
            "categories" => $categories,
            "steps" => $steps,
            "capsScarecities" => $capsScarecities,
            "mapCase" => $mapCase,
            "objectDurations" => $objectDurations,
            "objects" => $objects,
            "planets" => $planets,
            "rewards" => $rewards,
            "winConditions" => $winConditions,
            "works" => $works,
            "trains" => $trains
        ]);
    }
}
