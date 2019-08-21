<?php

namespace App\Http\Controllers\Admin;

use App\Baron;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class BaronController extends Controller
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
        $barons = Baron::all();

        return view('pages.admin.barons', compact('barons'));
    }

    /**
     * Show a user's info
     *
     * @param Request $request
     * @param $id
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function show(Request $request, $id) {
        $baron = Baron::find($id);

        return view('pages.admin.baron_modify', compact('baron'));
    }

    public function modify(Request $request, $id) {
        $data = $request->all();

        $baron = Baron::find($id);
        $baron->name    = $data['name'];
        $baron->address = $data['address'];
        $baron->save();

        return redirect()->route('baron.all');
    }

    public function create() {
        return view('pages.admin.baron_create');
    }

    public function store(Request $request) {
        $data = $request->all();

        $baron = new Baron();
        $baron->name    = $data['name'];
        $baron->address = $data['address'];
        $baron->save();

        return redirect()->route('baron.all');
    }

    public function delete(Request $request, $id) {
        $baron = Baron::find($id);
        $baron->delete();

        return redirect()->route('baron.all');
    }
}
