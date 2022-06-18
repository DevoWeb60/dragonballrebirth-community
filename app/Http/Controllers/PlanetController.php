<?php

namespace App\Http\Controllers;

use App\Models\Planet;
use Illuminate\Http\Request;

class PlanetController extends Controller
{
    public function create(Request $request)
    {
        $planet = new Planet();

        $planet->planet = $request->name;
        $planet->save();
    }

    public function update(Request $request, Planet $planet)
    {
        $planet::where('id', $request->id)->update([
            'planet' => $request->name,
        ]);
    }

    public function destroy(Planet $planet, Request $request)
    {
        $planet->where('id', $request->id)->delete();
    }
}
