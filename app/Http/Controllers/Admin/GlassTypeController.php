<?php

namespace App\Http\Controllers\Admin;

use App\GlassType;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class GlassTypeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function save(Request $request) {
        $list = $request->input('data');
        $category = $request->input('category');
        $deleted = $request->input('deleted');

        if ($deleted) {
            foreach ($deleted as $id) {
                $type = GlassType::find($id);
                if (!is_null($type)) {
                    $type->delete();
                }
            }
        }

        $newList = [];

        foreach ($list as $row) {
            if (isset($row['id'])) {
                $type = GlassType::find($row['id']);
                $type->name = $row['name'];
                $type->price = $row['price'];
                $type->save();
            } else {
                $type = new GlassType($row);
                $type->save();
            }

            array_push($newList, $type);
        }

        return response()->json(['success' => true, 'list' => $newList], 200);
    }
}
