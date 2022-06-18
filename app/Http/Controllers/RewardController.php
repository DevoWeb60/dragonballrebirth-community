<?php

namespace App\Http\Controllers;

use App\Models\Rewards;
use Illuminate\Http\Request;

class RewardController extends Controller
{

    public function create(Request $request)
    {
        $reward = new Rewards();

        $reward->name = $request->name;
        $reward->object_id = $request->object_id;
        $reward->quantity_object = $request->quantity_object;
        $reward->caps_id = $request->caps_id;
        $reward->quantity_caps = $request->quantity_caps;
        $reward->character_id = $request->character_id;
        $reward->experience = $request->experience;
        $reward->rewards_character_id = $request->reward_character_id;
        $reward->skin = $request->skin;
        $reward->zenis = $request->zenis;
        $reward->save();
    }


    public function update(Request $request, Rewards $rewards)
    {
        $rewards::where('id', $request->id)->update([
            'name' => $request->name,
            'object_id' => $request->object_id,
            'quantity_object' => $request->quantity_object,
            'caps_id' => $request->caps_id,
            'quantity_caps' => $request->quantity_caps,
            'character_id' => $request->character_id,
            'experience' => $request->experience,
            'rewards_character_id' => $request->reward_character_id,
            'skin' => $request->skin,
            'zenis' => $request->zenis,
        ]);
    }


    public function destroy(Rewards $rewards, Request $request)
    {
        $rewards->where('id', $request->id)->delete();
    }
}
