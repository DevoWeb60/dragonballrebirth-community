<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\CharacterCategory;
use Illuminate\Support\Facades\DB;

class CharacterCategoryController extends Controller
{


    public function create(Request $request)
    {
        $category = new CharacterCategory;

        $category->name = $request->name;
        $category->save();
    }


    public function update(Request $request, CharacterCategory $characterCategory)
    {
        $characterCategory::where('id', $request->id)->update([
            'name' => $request->name,
        ]);
    }

    public function destroy(CharacterCategory $characterCategory, Request $request)
    {
        DB::table('link_characters_to_categories')->where('category_id', $request->id)->delete();
        $characterCategory->where('id', $request->id)->delete();
    }
}
