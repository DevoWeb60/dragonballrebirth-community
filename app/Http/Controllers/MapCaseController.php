<?php

namespace App\Http\Controllers;

use App\Models\MapCase;
use Illuminate\Http\Request;

class MapCaseController extends Controller
{
    public function create(Request $request)
    {
        $mapCase = new MapCase;

        $mapCase->case = $request->name;
        $mapCase->save();
    }


    public function update(Request $request, MapCase $mapCase)
    {
        $mapCase::where('id', $request->id)->update([
            'case' => $request->name,
        ]);
    }

    public function destroy(MapCase $mapCase, Request $request)
    {
        $mapCase->where('id', $request->id)->delete();
    }
}
