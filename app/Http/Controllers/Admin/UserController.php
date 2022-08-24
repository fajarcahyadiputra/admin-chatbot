<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class UserController extends Controller
{
    public function index()
    {
        $users = User::all();
        return view('admin.user.index', compact('users'));
    }
    public function create()
    {
        return view('admin.user.createUser');
    }
    public function show($id)
    {
        return response()->json(false);
    }
    public function store()
    {
        if (request()->ajax() && request()->method('POST')) {
            $requestBody = request()->except("_token");
            if (isset($requestBody['isActive'])) {
                $requestBody['isActive'] = 1;
            }
            $requestBody['password'] = bcrypt($requestBody['password']);
            //save photo
            if (request()->file('picture')->isValid()) {
                // cache the file
                $file = request()->file('picture');
                $path = Storage::putFile(
                    'public/images',
                    $file
                );
                $requestBody['picture'] = $path;
            } else {
                return response()->json(false);
            }
            $newUser = User::create($requestBody);
            if ($newUser) {
                return response()->json(true);
            } else {
                return response()->json(false);
            }
        } else {
            return response()->json(false);
        }
    }
    public function edit($id)
    {
        $user = User::findorFail($id);
        return view('admin.user.editUSer', compact('user'));
    }
    public function update($id)
    {
        $user = User::find($id);
        if (!$user) {
            return response()->json(false);
        }
        if (request()->ajax() && request()->method('POST')) {
            $requestBody = request()->except("_token");
            if (isset($requestBody['isActive'])) {
                $requestBody['isActive'] = 1;
            }
            if (isset($requestBody['password'])) {
                $requestBody['password'] = bcrypt($requestBody['password']);
            }
            //save photo
            if (request()->hasFile("picture")) {
                if (request()->file('picture')->isValid()) {
                    // cache the file
                    $file = request()->file('picture');
                    $path = Storage::putFile(
                        'public/images',
                        $file
                    );
                    if (Storage::exists($user->picture)) {
                        Storage::delete($user->picture);
                    }
                    $requestBody['picture'] = $path;
                } else {
                    return response()->json(false);
                }
            }
            $user->fill($requestBody);
            $user->save();
            return response()->json(true);
        } else {
            return response()->json(false);
        }
    }
    public function destroy($id)
    {
        $user = User::findOrFail($id);
        $oldImage = $user->picture;
        $user->delete();
        if ($user) {
            if (Storage::exists($oldImage)) {
                Storage::delete($oldImage);
            }
            return response()->json(true);
        } else {
            return response()->json(false);
        }
    }
}
