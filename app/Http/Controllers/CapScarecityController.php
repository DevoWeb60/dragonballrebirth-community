<?php

namespace App\Http\Controllers;

use App\Models\Caps;
use App\Models\CapsScarecity;
use App\Models\Character;
use Illuminate\Http\Request;

class CapScarecityController extends Controller
{


    public function create(Request $request)
    {
        $scarecity = new CapsScarecity;

        $scarecity->name = $request->name;
        $scarecity->icon = $request->icon;
        $scarecity->save();
    }


    public function update(Request $request, CapsScarecity $capsScarecity)
    {
        $capsScarecity::where('id', $request->id)->update([
            'name' => $request->name,
            'icon' => $request->icon,
        ]);
    }


    public function destroy(CapsScarecity $capsScarecity, Request $request)
    {
        $capsScarecity->where('id', $request->id)->delete();
    }
}
