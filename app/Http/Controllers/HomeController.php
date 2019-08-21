<?php

namespace App\Http\Controllers;

use App\Baron;
use App\Basket;
use App\GlassType;
use App\Order;
use App\Traits\PriceUtility;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;

class HomeController extends Controller
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

    /**
     * Show choose action screen
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        return view('home');
    }

    /**
     * Redirects to proper action pages
     *
     * @param Request $request
     * @return \Illuminate\Http\RedirectResponse|\Illuminate\Routing\Redirector
     */
    public function decideAction(Request $request) {
        $action = $request->get('action');

        if ($action) {
            return redirect($action);
        } else {
            return redirect()->back();
        }
    }

    /**
     * Shows 'Modify Order' page
     *
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function modifyOrder() {
        $user = Auth::user();
        $user_id = $user->id;
        $baskets = collect();
        if ($user->hasRole('admin')) {
            $basketList = Basket::orderByDesc('created_at')->get();
            $orderList = Order::orderByDesc('created_at')->get();
        } else {
            $basketList = Basket::where('user_id', $user_id)->orderByDesc('created_at')->get();
            $orderList = Order::where('user_id', $user_id)->orderByDesc('created_at')->get();
        }
        $baskets = $baskets->merge($basketList)->merge($orderList);
        $baskets->sortBy(function($item) {
            return $item->created_at;
        }, SORT_STRING);

        return view('pages.order_list', compact('baskets'));
    }

    /**
     * Shows 'Customer Info' page
     *
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function infoOrder() {
        return view('pages.order_info');
    }

    /**
     * Shows 'Create Order' page
     *
     * @param Request $request
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function createOrder(Request $request) {
        $customerName    = $request->input('customer-name');
        $physicalAddress = $request->input('physical-address');
        $idNumber        = $request->input('id-number');
        $phoneNumber     = $request->input('phone-number');
        $customerInfo = array(
            'name'             => $customerName,
            'physical-address' => $physicalAddress,
            'id-number'        => $idNumber,
            'phone-number'     => $phoneNumber,
        );

        Session::put('customer-info', $customerInfo);

        if (Auth::user()->hasRole('admin')) {
            $barons = Baron::all();
        } else {
            $barons = Baron::where('id', Auth::user()->baron_id)->get();
        }
        $glassTypes = GlassType::all();

        $price = $this->getPriceSettings();

        return view('pages.order_create', compact('glassTypes', 'barons', 'customerInfo', 'price'));
    }

    /**
     * Show 'Manage Depot' page
     *
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function depotManage() {
        $user = Auth::user();
        if ($user->hasRole('admin')) {
            $orders = Order::where('status', '<>', 'complete')->orderBy('created_at')->get();
        } else {
            $orders = Order::where('status', '<>', 'complete')->where('baron_id', Auth::user()->baron_id)->orderBy('created_at')->get();
        }

        return view('pages.depot', compact('orders'));
    }

    /**
     * Show 'Record Receipt' page
     *
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function recordReceipt() {
        $barons = Baron::all();

        return view('pages.record_receipt', compact('barons'));
    }

    /**
     * Show 'New Stock' page
     *
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function addStock() {
        $glassTypes = GlassType::all();

        return view('pages.stock_new', compact('glassTypes'));
    }

    /**
     * Show 'Change Stock' page
     *
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function changeStock() {
        $glassTypes = GlassType::all();
        $price = $this->getPriceSettings();

        return view('pages.stock_change', compact('glassTypes', 'price'));
    }

    /**
     * Show 'Count Stock' page
     *
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function countStock() {
        $glassTypes = GlassType::all();

        return view('pages.stock_count', compact('glassTypes'));
    }
}
