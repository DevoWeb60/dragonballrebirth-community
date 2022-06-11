<?php

namespace App\Http\Controllers;

use App\Models\WaitingDuration;
use Illuminate\Http\Request;

class WaitingDurationController extends Controller
{
    public function create(Request $request)
    {
        $waitingDuration = new WaitingDuration;

        $waitingDuration->duration = $request->name;
        $waitingDuration->save();
    }

    public function update(Request $request, WaitingDuration $waitingDuration)
    {
        $waitingDuration::where('id', $request->id)->update([
            'duration' => $request->name,
        ]);
    }

    public function destroy(WaitingDuration $waitingDuration, Request $request)
    {
        $waitingDuration->where('id', $request->id)->delete();
    }
}
