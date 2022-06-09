<?php

namespace App\Http\Controllers;

use App\Models\Caps;
use Illuminate\Http\Request;
use App\Models\CapsScarecity;
use Illuminate\Support\Facades\DB;

class CapsController extends Controller
{

    public function index()
    {
        return view('capsules', [
            'caps' => Caps::all(),
        ]);
    }

    public function create(Request $request)
    {
        $caps = new Caps;

        $caps->name = $request->name;
        $caps->caps_scarecities_id = $request->caps_scarecities_id;
        $caps->price = $request->price;
        $caps->min_level = $request->min_level;
        $caps->strength = $request->strength;
        $caps->defense = $request->defense;
        $caps->energy = $request->energy;
        $caps->vitality = $request->vitality;
        $caps->bonus = $request->bonus;
        $caps->malus = $request->malus;
        $caps->save();
    }

    public function update(Request $request, Caps $caps)
    {
        $caps::where('id', $request->id)->update([
            'name' => $request->name,
            'caps_scarecities_id' => $request->caps_scarecities_id,
            'price' => $request->price,
            'strength' => $request->strength,
            'defense' => $request->defense,
            'energy' => $request->energy,
            'vitality' => $request->vitality,
            'bonus' => $request->bonus,
            'malus' => $request->malus,
            'min_level' => $request->min_level,
        ]);
    }

    public function destroy(Caps $caps, Request $request)
    {
        if ($request->characterId) {
            DB::update('UPDATE characters SET caps_id = NULL WHERE id = ?', [$request->characterId]);
        }
        $caps->where('id', $request->id)->delete();
    }
}
