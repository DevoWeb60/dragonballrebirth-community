<?php

namespace App\Http\Controllers;

use App\Models\ObjectDuration;
use App\Models\ObjectItem;
use App\Models\Story;
use Illuminate\Http\Request;

class ObjectController extends Controller
{


    public function index() {
        return view('objects', [
            'objects' => ObjectItem::all(),
        ]);
    }

    public function api(){
        $objects = ObjectItem::all();

        foreach ($objects as $object) {
            $object->duration = $object->duration;
        }

        return response()->json($objects);
    }
}
