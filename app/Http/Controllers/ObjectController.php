<?php

namespace App\Http\Controllers;

use App\Models\ObjectDuration;
use App\Models\ObjectItem;
use App\Models\Story;
use Illuminate\Http\Request;

class ObjectController extends Controller
{


    public function index()
    {
        return view('objects', [
            'objects' => ObjectItem::all(),
        ]);
    }

    public function create(Request $request)
    {
        $object = new ObjectItem();
        $object->name = $request->name;
        $object->object_duration_id = $request->object_duration_id;
        $object->description = $request->description;
        $object->using = $request->using;
        $object->icon = $request->icon;
        $object->consumable = $request->consumable;
        $object->save();
    }

    public function update(Request $request, ObjectItem $object)
    {
        $object::where('id', $request->id)->update([
            'name' => $request->name,
            'object_duration_id' => $request->object_duration_id,
            'description' => $request->description,
            'using' => $request->using,
            'icon' => $request->icon,
            'consumable' => $request->consumable,
        ]);
    }

    public function destroy(Request $request)
    {
        $object = ObjectItem::find($request->id);
        $object->delete();
    }
}
