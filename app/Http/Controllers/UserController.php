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
        if ($request->hasFile('picture')) {
            $this->validate($request, [
                'picture' => 'image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            ]);
            if ($request->hasFile('picture') && $request->file('picture')->isValid()) {
                $fileName = $request->name . '.' . $request->picture->extension();
                $file = $request->file('picture')->storeAs('public/users', $fileName);

                $user::where('id', $request->id)->update([
                    'picture' => $fileName,
                ]);
            }
        }

        $user::where('id', $request->id)->update([
            'name' => $request->name,
            'role' => $request->role,
            'email' => $request->email,
        ]);

        if ($request->password) {
            $user::where('id', $request->id)->update([
                'password' => Hash::make($request->password)
            ]);
        }
    }
}
