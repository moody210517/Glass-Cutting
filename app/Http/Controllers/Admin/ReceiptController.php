<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Receipt;
use Illuminate\Http\Request;

class ReceiptController extends Controller
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
        $data = $request->all();

        $receipt = new Receipt($data);
        $receipt->save();

        return response()->json(['success' => true], 200);
    }
}
