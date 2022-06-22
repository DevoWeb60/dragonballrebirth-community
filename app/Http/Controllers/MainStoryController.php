<?php

namespace App\Http\Controllers;

use App\Models\MainStory;
use Illuminate\Http\Request;

class MainStoryController extends Controller
{
    public function index()
    {
        return view('adventureMode.index', [
            'mainStories' => MainStory::all()
        ]);
    }

    public function create(Request $request)
    {
        $mainStory = new MainStory();

        $mainStory->name = $request->name;
        $mainStory->id = $request->id;
        $mainStory->save();
    }

    public function update(Request $request, MainStory $mainStory)
    {
        $newData = [];
        if ($request->id != $request->origin_id) {
            $newData = [
                'name' => $request->name,
                'id' => $request->id,
            ];
        } else {
            $newData = [
                'name' => $request->name,
            ];
        }

        $mainStory::where('id', $request->origin_id)->update($newData);
    }

    public function destroy(MainStory $mainStory, Request $request)
    {
        $mainStory->where('id', $request->id)->delete();
    }
}
