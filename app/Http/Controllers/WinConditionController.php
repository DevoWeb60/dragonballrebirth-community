<?php

namespace App\Http\Controllers;

use App\Models\WinCondition;
use Illuminate\Http\Request;

class WinConditionController extends Controller
{

    public function create(Request $request)
    {
        $winCondition = new WinCondition();

        $winCondition->name = $request->name;
        $winCondition->object_harvest = $request->object_harvest;
        $winCondition->object_harvest_quantity = $request->object_harvest_quantity;
        $winCondition->custom_condition = $request->custom_condition;
        $winCondition->condition_base_id = $request->condition_base_id;
        $winCondition->special_trains = $request->special_trains;
        $winCondition->any_trains_quantity = $request->any_trains_quantity;
        $winCondition->spell_condition_number = $request->spell_condition_number;
        $winCondition->critical_strike = $request->critical_strike;
        $winCondition->dodge_attack = $request->dodge_attack;
        $winCondition->min_damage = $request->min_damage;
        $winCondition->save();
    }


    public function update(Request $request, WinCondition $winCondition)
    {
        $winCondition::where('id', $request->id)->update([
            'name' => $request->name,
            'object_harvest' => $request->object_harvest,
            'object_harvest_quantity' => $request->object_harvest_quantity,
            'custom_condition' => $request->custom_condition,
            'condition_base_id' => $request->condition_base_id,
            'special_trains' => $request->special_trains,
            'any_trains_quantity' => $request->any_trains_quantity,
            'spell_condition_number' => $request->spell_condition_number,
            'critical_strike' => $request->critical_strike,
            'dodge_attack' => $request->dodge_attack,
            'min_damage' => $request->min_damage,
        ]);
    }


    public function destroy(WinCondition $winCondition, Request $request)
    {
        $winCondition->where('id', $request->id)->delete();
    }
}
