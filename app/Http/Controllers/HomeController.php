<?php

namespace App\Http\Controllers;

use App\Models\Caps;
use App\Models\User;
use App\Models\Work;
use App\Models\Story;
use App\Models\Train;
use App\Models\Character;
use App\Models\MainStory;
use Illuminate\Http\Request;
use App\Models\CapsScarecity;
use App\Models\ObjectItem;

class HomeController extends Controller
{

    public function index()
    {
        $users = User::all();
        $story = Story::orderBy('id', 'DESC')->whereNot('main_story', 100)->whereNot('visible', 0)->first();
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

    public function various()
    {
        $characters = Character::orderBy('id', 'DESC')->where('is_pnj', null)->take(5)->get();
        $objects = ObjectItem::orderBy('id', 'DESC')->take(5)->get();
        $works = Work::orderBy('id', 'DESC')->take(5)->get();
        $caps = Caps::orderBy('id', 'DESC')->take(5)->whereNot('caps_scarecities_id', 1)->get();
        $trains = Train::orderBy('id', 'DESC')->take(5)->get();

        return view('various', [
            'characters' => $characters,
            'objects' => $objects,
            'works' => $works,
            'caps' => $caps,
            'trains' => $trains
        ]);
    }
}
