<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Storage;

class UserController extends Controller
{

    public function create(Request $request)
    {
        $user = new User();
        $user->name = $request->name;
        $user->email = $request->email;
        $user->password = Hash::make($request->password);
        $user->role = $request->role;
        $user->save();
    }


    public function update(Request $request, User $user)
    {
        $user::where('id', $request->id)->update([
            'name' => $request->name,
            'role' => $request->role,
            'picture' => $request->picture,
            'email' => $request->email,
        ]);

        if ($request->password) {
            $user::where('id', $request->id)->update([
                'password' => Hash::make($request->password)
            ]);
        }
    }

    public function uploadPicture(Request $request, User $user)
    {
        $newName = "";

        if ($request->picture) {
            $newName = explode('.', $request->picture);
            $newName = $request->name . '.' . $newName[1];
            Storage::put($newName, $request->picture);
        }

        $user::where('id', $request->id)->update([
            'picture' => $newName
        ]);
    }
}
