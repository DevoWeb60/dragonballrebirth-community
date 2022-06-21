<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Models\Story;
use App\Models\Character;
use Illuminate\Http\Request;
use App\Models\CapsScarecity;
use App\Models\MainStory;

class HomeController extends Controller
{

    public function index()
    {
        $users = User::all();
        $story = Story::orderBy('id', 'DESC')->whereNot('main_story', 100)->first();
        $mainStory = MainStory::find($story->main_story);
        $additionalQuest = Story::orderBy('id', 'DESC')->where('main_story', 100)->first();
        $character = Character::orderBy('id', 'DESC')->where('is_pnj', null)->first();
        $capsIcon = CapsScarecity::find(1);

        return view('home', [
            'users' => $users,
            'story' => $story,
            'additionalQuest' => $additionalQuest,
            'character' => $character,
            'capsIcon' => $capsIcon,
            'mainStory' => $mainStory,

        ]);
    }
}
