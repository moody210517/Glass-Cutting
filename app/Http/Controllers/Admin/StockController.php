<?php

namespace App\Http\Controllers\Admin;

use App\GlassType;
use App\Http\Controllers\Controller;
use App\Purchase;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class StockController extends Controller
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

    public function addStock(Request $request) {
        $data = $request->all();

        $typeId = $data['type_id'];
        $type = GlassType::find($typeId);
        $type->quantity += $data['quantity'];
        $type->width = $data['width'];
        $type->height = $data['height'];
        $type->save();

        $purchase = new Purchase(array(
            'type'      => $data['type'],
            'type_id'   => $typeId,
            'type_name' => $data['type_name'],
            'width'     => $data['width'],
            'height'    => $data['height'],
            'quantity'  => $data['quantity'],
            'cost'      => $data['cost'],
            'user_id'   => Auth::user()->id,
        ));
        $purchase->save();

        return response()->json(['success' => true], 200);
    }
}
