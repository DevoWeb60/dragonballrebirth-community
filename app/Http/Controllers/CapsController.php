<?php

namespace App\Http\Controllers;

use App\Models\Caps;
use App\Models\CapsScarecity;
use Illuminate\Http\Request;

class CapsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('capsules', [
            'caps' => Caps::all(),
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

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Caps  $caps
     * @return \Illuminate\Http\Response
     */
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

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Caps  $caps
     * @return \Illuminate\Http\Response
     */
    public function destroy(Caps $caps, Request $request)
    {
        $caps->where('id', $request->id)->delete();

        return response()->json([
            'success' => true,
            'id' => $request->id,
        ]);
    }
}
