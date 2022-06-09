<?php

namespace App\Http\Controllers;

use App\Models\Work;
use App\Models\Planet;
use App\Models\MapCase;
use App\Models\ObjectItem;
use Illuminate\Http\Request;
use App\Models\WaitingDuration;

class WorkController extends Controller
{
    public function index()
    {
        return view('works', [
            'works' => Work::all(),
        ]);
    }

    public function create(Request $request)
    {
        $work = new Work();
        $work->name = $request->name;
        $work->utils = $request->utils;
        $work->thumbnail = $request->thumbnail;
        $work->waiting_duration_id = $request->waiting_duration_id;
        $work->map_case_id = $request->map_case_id;
        $work->planet_id = $request->planet_id;
        $work->object_id = $request->object_id;
        $work->unlock_step = $request->unlock_step;
        $work->save();
    }

    public function update(Request $request, Work $work)
    {
        $work::where('id', $request->id)->update([
            'name' => $request->name,
            'utils' => $request->utils,
            'thumbnail' => $request->thumbnail,
            'waiting_duration_id' => $request->waiting_duration_id,
            'map_case_id' => $request->map_case_id,
            'planet_id' => $request->planet_id,
            'object_id' => $request->object_id,
            'unlock_step' => $request->unlock_step,
        ]);
    }

    public function destroy(Work $work, Request $request)
    {
        $work->where('id', $request->id)->delete();
    }
}
