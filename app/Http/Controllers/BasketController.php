<?php

namespace App\Http\Controllers;

use App\Baron;
use App\Basket;
use App\Traits\PriceUtility;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;
use Illuminate\Http\Request;

class BasketController extends Controller
{
    use PriceUtility;

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function show(Request $request) {
        $uid = urldecode($request->get('uid'));
        $basket = Basket::where('uid', $uid)->first();
        $data = $basket->data;
        $items = json_decode($data);
        $price = $this->getPriceSettings();

        $barons = Baron::all();

        $customerInfo = array(
            'name'             => $basket->customer_name,
            'physical-address' => $basket->customer_address,
            'id-number'        => $basket->customer_id,
            'phone-number'     => $basket->customer_phone,
        );

        Session::put('customer-info', $customerInfo);

        $page_type = 'basket';
        return view('pages.order_modify', compact('items', 'barons', 'price', 'uid', 'page_type', 'customerInfo'));
    }

    public function save(Request $request) {
        $data = $request->input('data');
        $uid = $request->input('uid');

        $customerInfo = Session::get('customer-info');

        $basket = Basket::where('uid', $uid)->first();

        if (is_null($basket)) {
            $basket = new Basket();
            $basket->uid                = $uid;
            $basket->user_id            = Auth::user()->id;
            $basket->customer_name      = $customerInfo['name'];
            $basket->customer_address   = $customerInfo['physical-address'];
            $basket->customer_id        = $customerInfo['id-number'];
            $basket->customer_phone     = $customerInfo['phone-number'];
            $basket->data               = $data;
        } else {
            $basket->data = $data;
        }
        $basket->save();

        return response()->json(['success' => true], 200);
    }

    public function update(Request $request) {
        return response()->json(['success' => true], 200);
    }

    public function delete(Request $request) {
        $uid = $request->input('uid');

        Basket::where('uid', $uid)->forceDelete();

        return response()->json(['success' => true], 200);
    }
}
