<?php

namespace App\Http\Controllers;

use App\Models\Train;
use App\Models\Planet;
use App\Models\MapCase;
use Illuminate\Http\Request;
use App\Models\WaitingDuration;

class TrainController extends Controller
{
    public function index()
    {
        return view('trains', [
            'trains' => Train::all(),
        ]);
    }

    public function create(Request $request)
    {
        $train = new Train();
        $train->name = $request->name;
        $train->icon = $request->icon;
        $train->map_case_id = $request->map_case_id;
        $train->planet_id = $request->planet_id;
        $train->duration_id = $request->duration_id;
        $train->gain   = $request->gain;
        $train->required_level = $request->required_level;
        $train->step_id = $request->step_id;
        $train->thumbnail = $request->thumbnail;
        $train->specificity = $request->specificity;
        $train->save();
    }


    public function update(Request $request, Train $train)
    {
        $train::where('id', $request->id)->update([
            "name" => $request->name,
            "icon" => $request->icon,
            "map_case_id" => $request->map_case_id,
            "planet_id" => $request->planet_id,
            "duration_id" => $request->duration_id,
            "gain"   => $request->gain,
            "required_level" => $request->required_level,
            "step_id" => $request->step_id,
            "thumbnail" => $request->thumbnail,
            "specificity" => $request->specificity,
        ]);
    }


    public function destroy(Train $train, Request $request)
    {
        $train::where('id', $request->id)->delete();
    }
}
