<?php

namespace App\Http\Controllers;

use App\Models\Character;
use App\Models\Caps;
use App\Models\Story;
use App\Models\CapsScarecity;
use Illuminate\Http\Request;

class CharacterController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $characters = Character::all();
        $capsIcon = CapsScarecity::find(1);


        return view('characters', [
            'characters' => $characters,
            'capsIcon' => $capsIcon,
        ]);
    }

    public function api(){
        $characters = Character::all();
        $greenCaps = Caps::where('caps_scarecities_id', 1)->get();
        $capsIcon = CapsScarecity::find(1);
        $stories = Story::all();

        return response()->json([
            'characters' => $characters,
            'capsIcon' => $capsIcon,
            'greenCaps' => $greenCaps,
            'stories' => $stories
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        $character = new Character;

        $character->name = $request->name;
        $character->avatar = $request->avatar;
        $character->ruby_cost = $request->ruby_cost;
        $character->story_id = $request->story_id;
        $character->caps_id = $request->caps_id;
        $character->is_pnj = $request->is_pnj;
        $character->step_unlock = $request->step_unlock;
        $character->save();

    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Character  $character
     * @return \Illuminate\Http\Response
     */
    public function show(Character $character)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Character  $character
     * @return \Illuminate\Http\Response
     */
    public function edit(Character $character)
    {
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Character  $character
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Character $character)
    {
        $character::where('id', $request->id)->update([
            'name' => $request->name,
            'avatar' => $request->avatar,
            'ruby_cost' => $request->ruby_cost,
            'story_id' => $request->story_id,
            'caps_id' => $request->caps_id,
            'is_pnj' => $request->is_pnj,
            'step_unlock' => $request->step_unlock,
        ]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Character  $character
     * @return \Illuminate\Http\Response
     */
    public function destroy(Character $character, Request $request)
    {
        $character->where('id', $request->id)->delete();
    }
}
