<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\AdventureMode;
use Illuminate\Support\Facades\DB;

class StepController extends Controller
{

    public function create(Request $request)
    {
        $step = new AdventureMode();

        $step->character_id = $request->character_id;
        $step->enemy_id = $request->enemy_id;
        $step->enemy_health = $request->enemy_health;
        $step->enemy_level = $request->enemy_level;
        $step->map_case_id = $request->map_case_id;
        $step->planet_id = $request->planet_id;
        $step->step_number = $request->step_number;
        $step->story_id = $request->story_id;
        $step->save();

        if ($request->conditions) {
            foreach ($request->conditions as $condition) {
                DB::insert('INSERT INTO link_win_conditions_to_steps (conditions_id, step_number) VALUES (?, ?)', [$condition, $step->id]);
            }
        }
        if ($request->rewards) {
            foreach ($request->rewards as $reward) {
                DB::insert('INSERT INTO link_rewards_to_steps (rewards_id, step_number) VALUES (?, ?)', [$reward, $step->id]);
            }
        }
    }

    public function update(Request $request, AdventureMode $adventureMode)
    {
        $adventureMode::where('id', $request->id)->update([
            'character_id' => $request->character_id,
            'enemy_id' => $request->enemy_id,
            'enemy_health' => $request->enemy_health,
            'enemy_level' => $request->enemy_level,
            'map_case_id' => $request->map_case_id,
            'planet_id' => $request->planet_id,
            'step_number' => $request->step_number,
            'story_id' => $request->story_id,
        ]);


        if ($request->conditions) {
            DB::table('link_win_conditions_to_steps')->where('step_number', $request->id)->delete();

            foreach ($request->conditions as $condition) {
                DB::insert('INSERT INTO link_win_conditions_to_steps (step_number, conditions_id) VALUES (?, ?)', [$request->id, $condition]);
            }
        }
        if ($request->rewards) {
            DB::table('link_rewards_to_steps')->where('step_number', $request->id)->delete();

            foreach ($request->rewards as $reward) {
                DB::insert('INSERT INTO link_rewards_to_steps (step_number, rewards_id) VALUES (?, ?)', [$request->id, $reward]);
            }
        }
    }

    public function destroy(AdventureMode $adventureMode, Request $request)
    {
        DB::table('link_win_conditions_to_steps')->where('step_number', $request->id)->delete();
        DB::table('link_rewards_to_steps')->where('step_number', $request->id)->delete();
        $adventureMode->where('id', $request->id)->delete();
    }
}
