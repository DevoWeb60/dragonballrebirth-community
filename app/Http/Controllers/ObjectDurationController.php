<?php

namespace App\Http\Controllers;

use App\Models\ObjectDuration;
use Illuminate\Http\Request;

class ObjectDurationController extends Controller
{

    public function create(Request $request)
    {
        $objectDuration = new ObjectDuration;

        $objectDuration->duration = $request->name;
        $objectDuration->save();
    }


    public function update(Request $request, ObjectDuration $objectDuration)
    {
        $objectDuration::where('id', $request->id)->update([
            'duration' => $request->name,
        ]);
    }


    public function destroy(ObjectDuration $objectDuration, Request $request)
    {
        $objectDuration->where('id', $request->id)->delete();
    }
}
