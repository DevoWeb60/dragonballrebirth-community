<?php

namespace App\Http\Controllers;

use App\Models\AdventureMode;
use App\Models\Story;
use Illuminate\Http\Request;

class StoryController extends Controller
{

    public function index()
    {
        $stories = Story::where('main_story', 100)->get();

        return view('additionalQuest.index', [
            'stories' => $stories
        ]);
    }


    public function create(Request $request)
    {
        $story = new Story();

        $story->story_name = $request->story_name;
        $story->main_story = $request->main_story;
        $story->step_unlock = $request->step_unlock;
        $story->thumbnail = $request->thumbnail;
        $story->story_unlock = $request->story_unlock;
        $story->story_number = $request->story_number;
        $story->custom_requirement = $request->custom_requirement ? $request->custom_requirement : "";
        $story->visible = $request->visible ? 1 : 0;
        $story->save();
    }


    public function show(Story $story)
    {
        $storyThumbnail = null;
        $storyNumber = null;
        if ($story->story_number == 9) {
            $storyThumbnail = "https://www.dragonballrebirth.fr/img/aventure/etapes/9/1.png";
        } else {
            $storyNumber = $story->story_number;
        }

        // https: //www.dragonballrebirth.fr/img/aventure/etapes/{{ $storyThumbnail }}/story-{{ $storyThumbnail }}-

        return view('stepShow', [
            "steps" => AdventureMode::where('story_id', $story->id)->orderBy('step_number')->get(),
            'story' => $story,
            'storyThumbnail' => $storyThumbnail,
            "storyNumber" => $storyNumber
        ]);
    }

    public function update(Request $request, Story $story)
    {
        $story::where('id', $request->id)->update([
            'story_name' => $request->story_name,
            'main_story' => $request->main_story,
            'step_unlock' => $request->step_unlock,
            'thumbnail' => $request->thumbnail,
            'story_unlock' => $request->story_unlock,
            'story_number' => $request->story_number,
            'custom_requirement' => $request->custom_requirement ? $request->custom_requirement : "",
            'visible' => $request->visible ? 1 : 0,
        ]);
    }

    public function destroy(Story $story, Request $request)
    {
        $story->where('id', $request->id)->delete();
    }
}
