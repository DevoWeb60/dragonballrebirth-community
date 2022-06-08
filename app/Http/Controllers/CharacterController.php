<?php

namespace App\Http\Controllers;

use App\Models\Caps;
use App\Models\Story;
use App\Models\Character;
use App\Models\MainStory;
use Illuminate\Http\Request;
use App\Models\CapsScarecity;
use App\Models\CharacterCategory;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;

class CharacterController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $characters = Character::orderBy('ruby_cost')->orderBy('main_story_id')->orderBy('story_id')->orderBy('step_unlock')->get();
        $capsIcon = CapsScarecity::find(1);

        return view('characters', [
            'characters' => $characters,
            'capsIcon' => $capsIcon,
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
        $character->main_story_id = $request->main_story_id;
        $character->save();

        $lastId = DB::select('SELECT id FROM characters ORDER BY id DESC LIMIT 1');
        $lastId = $lastId[0]->id;

        foreach ($request->categories as $category) {
            DB::insert('INSERT INTO link_characters_to_categories (character_id, category_id) VALUES (?, ?)', [$lastId, $category]);
        }
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
            'main_story_id' => $request->main_story_id,
        ]);

        DB::table('link_characters_to_categories')->where('character_id', $request->id)->delete();

        foreach ($request->categories as $category) {
            DB::insert('insert into link_characters_to_categories (character_id, category_id) values (?, ?)', [$request->id, $category]);
        }
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
        DB::table('link_characters_to_categories')->where('character_id', $request->id)->delete();
        $character->where('id', $request->id)->delete();
    }
}
