<?php

namespace App\Http\Controllers;

use App\Models\Character;
use Illuminate\Http\Request;
use App\Models\CapsScarecity;
use Illuminate\Support\Facades\DB;


class CharacterController extends Controller
{

    public function index()
    {
        $characters = Character::orderBy('ruby_cost')->orderBy('main_story_id')->orderBy('story_id')->orderBy('step_unlock')->get();
        $capsIcon = CapsScarecity::find(1);

        return view('characters', [
            'characters' => $characters,
            'capsIcon' => $capsIcon,
        ]);
    }


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

        if ($request->categories) {
            $lastId = DB::select('SELECT id FROM characters ORDER BY id DESC LIMIT 1');
            $lastId = $lastId[0]->id;

            foreach ($request->categories as $category) {
                DB::insert('INSERT INTO link_characters_to_categories (character_id, category_id) VALUES (?, ?)', [$lastId, $category]);
            }
        }
    }

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

        if ($request->categories) {
            DB::table('link_characters_to_categories')->where('character_id', $request->id)->delete();

            foreach ($request->categories as $category) {
                DB::insert('INSERT INTO link_characters_to_categories (character_id, category_id) VALUES (?, ?)', [$request->id, $category]);
            }
        }
    }

    public function destroy(Character $character, Request $request)
    {
        DB::table('link_characters_to_categories')->where('character_id', $request->id)->delete();
        $character->where('id', $request->id)->delete();
    }
}
