<?php

namespace App\Http\Controllers;

use App\Models\WinConditionBase;
use Illuminate\Http\Request;

class ConditionBaseController extends Controller
{
    public function create(Request $request)
    {
        $condition = new WinConditionBase();

        $condition->condition = $request->name;
        $condition->save();
    }

    public function update(Request $request, WinConditionBase $winConditionBase)
    {
        $winConditionBase::where('id', $request->id)->update([
            'condition' => $request->name,
        ]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\WinConditionBase  $winConditionBase
     * @return \Illuminate\Http\Response
     */
    public function destroy(WinConditionBase $winConditionBase, Request $request)
    {
        $winConditionBase->where('id', $request->id)->delete();
    }
}
