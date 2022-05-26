<?php

namespace App\Http\Controllers;

use App\Models\Story;
use Illuminate\Http\Request;

class StoryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $stories = Story::where('main_story', 0)->get();

        return view('additionalQuest.index',[
            'stories' => $stories
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Story  $story
     * @return \Illuminate\Http\Response
     */
    public function show(Story $story)
    {
        $storyThumbnail = null;
        $storyNumber = null;
        if($story->main_story !== 0){
            $storyNumber = $story->main_story;
        }else if($story->story_number === 9){
            $storyThumbnail = "https://www.dragonballrebirth.fr/img/aventure/etapes/9/1.png";
        }else{
            $storyNumber = $story->story_number;
        }

        https://www.dragonballrebirth.fr/img/aventure/etapes/{{ $storyThumbnail }}/story-{{ $storyThumbnail }}-

        return view('stepShow', [
            'story' => $story,
            'storyThumbnail' => $storyThumbnail,
            "storyNumber" => $storyNumber
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Story  $story
     * @return \Illuminate\Http\Response
     */
    public function edit(Story $story)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Story  $story
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Story $story)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Story  $story
     * @return \Illuminate\Http\Response
     */
    public function destroy(Story $story)
    {
        //
    }
}
