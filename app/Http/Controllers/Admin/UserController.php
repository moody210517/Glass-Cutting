<?php

namespace App\Http\Controllers\Admin;

use App\Baron;
use App\Http\Controllers\Controller;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Spatie\Permission\Models\Role;

class UserController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('role:admin');
    }

    /**
     * Show all users.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $users = User::all();

        return view('pages.admin.users', compact('users'));
    }

    /**
     * Show a user's info
     *
     * @param Request $request
     * @param $id
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function show(Request $request, $id) {
        $user = User::find($id);
        $roles = Role::all();
        $barons = Baron::all();

        return view('pages.admin.user_modify', compact('user', 'roles', 'barons'));
    }

    public function modify(Request $request, $id) {
        $data = $request->all();

        $user = User::find($id);
        $user->email    = $data['email'];
        $user->password = Hash::make($data['password']);

        // Remove current roles
        $roles = $user->roles;
        foreach ($roles as $role) {
            $user->removeRole($role);
        }
        // End Remove current roles

        $user->assignRole($data['role']);

        if ($data['role'] != 'admin') {
            $user->baron_id = $data['baron'];
        }

        $user->save();

        return redirect()->route('user.all');
    }

    public function create() {
        $roles = Role::all();
        $barons = Baron::all();

        return view('pages.admin.user_create', compact('roles', 'barons'));
    }

    public function store(Request $request) {
        $data = $request->all();

        $user = new User();
        $user->name  = $data['username'];
        $user->email = $data['email'];
        $user->password = Hash::make($data['password']);

        $roleName = $data['role'];

        if ($roleName != 'admin') {
            $user->baron_id = $data['baron'];
        }

        $user->save();

        $user->assignRole($roleName);

        return redirect()->route('user.all');
    }

    public function delete(Request $request, $id) {
        $user = User::find($id);

        // Remove current roles
        $roles = $user->roles;
        foreach ($roles as $role) {
            $user->removeRole($role);
        }
        // End Remove current roles

        $user->delete();

        return redirect()->route('user.all');
    }
}
