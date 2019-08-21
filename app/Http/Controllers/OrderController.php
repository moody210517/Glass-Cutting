<?php

namespace App\Http\Controllers;

use App\Baron;
use App\Basket;
use App\Order;
use App\OrderItem;
use App\Purchase;
use App\Receipt;
use App\Traits\PriceUtility;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;

class OrderController extends Controller
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

    public function getAll() {
        if (Auth::user()->hasRole('admin')) {
            $customerInfo = Session::get('customer-info');

            dd($customerInfo);
        }
    }

    public function show(Request $request) {
        $uid = urldecode($request->get('uid'));
        $order = Order::where('uid', $uid)->first();
        $items = $order->items;
        $price = $this->getPriceSettings();

        $barons = Baron::all();

        $customerInfo = array(
            'name'             => $order->customer_name,
            'physical-address' => $order->customer_address,
            'id-number'        => $order->customer_id,
            'phone-number'     => $order->customer_phone,
        );

        Session::put('customer-info', $customerInfo);

        $page_type = 'order';
        return view('pages.order_modify', compact('items', 'barons', 'price', 'uid', 'page_type', 'order'));
    }

    public function store(Request $request) {
        $user = Auth::user();
        $customerInfo = Session::get('customer-info');

        $uid = $request->input('uid');
        Basket::where('uid', $uid)->delete();

        $delivery           = $request->input('delivery');
        $delivery_fee       = $request->input('delivery_fee');
        $delivery_distance  = $request->input('delivery_distance');

        $totalPrice = $delivery_fee * $delivery_distance;

        $order = new Order();
        $order->user_id           = $user->id;
        if ($delivery == 'no') {
            $order->baron_id = $request->input('baron');
        }
        $order->uid               = $uid;
        $order->customer_name     = $customerInfo['name'];
        $order->customer_address  = $customerInfo['physical-address'];
        $order->customer_id       = $customerInfo['id-number'];
        $order->customer_phone    = $customerInfo['phone-number'];
        $order->delivery          = $delivery;
        $order->delivery_fee      = $delivery_fee;
        $order->delivery_distance = $delivery_distance;
        $order->payment_method    = $request->input('payment');
        $order->save();

        $complete = true;

        $items = $request->input('items');
        foreach ($items as $item) {
            $totalPrice += $item['price'];

            $orderItem = new OrderItem($item);
            $orderItem->order_id = $order->id;
            if ($item['type'] == 'tool') {
                $orderItem->status = 'complete';
            } else {
                $complete = false;
            }
            $orderItem->save();
        }

        if ($complete) {
            $order->status = 'complete';
        }
        $order->price = $totalPrice;
        $order->save();

        return response()->json(array('success' => true), 200);
    }

    public function update(Request $request) {
        $data = $request->input('data');

        $orderItem = OrderItem::find($data['id']);
        unset($data['id']);
        unset($data['created_at']);
        unset($data['updated_at']);
        $orderItem->update($data);

        $order = Order::find($data['order_id']);
        $order->price = $order->calculatePrice();
        $order->save();

        return response()->json(['success' => true], 200);
    }

    public function process(Request $request) {
        $id = $request->input('id');

        $orderItem = OrderItem::find($id);
        $orderItem->status = 'processing';
        $orderItem->processed_by = Auth::user()->id;
        $orderItem->save();

        $order = $orderItem->order;
        $order->status = 'processing';
        $order->save();

        return response()->json(['success' => true], 200);
    }

    public function printOrder(Request $request) {
        $id = $request->input('id');

        $orderItem = OrderItem::find($id);
        $orderItem->printed = 'yes';
        $orderItem->save();

        return response()->json(['success' => true], 200);
    }

    public function complete(Request $request) {
        $id = $request->input('id');

        $orderItem = OrderItem::find($id);
        $orderItem->status = 'complete';
        $orderItem->completed_by = Auth::user()->id;
        $orderItem->save();

        $otherItems = OrderItem::where('order_id', $orderItem->order_id)->where(function($query) {
            return $query->orWhere('status', 'delivered')->orWhere('status', 'processing');
        })->get();

        if ($otherItems->isEmpty()) {
            $order = Order::find($orderItem->order_id);
            $order->status = 'complete';
            $order->save();
        }

        return response()->json(['success' => true], 200);
    }

    public function search(Request $request) {
        $baron_id = $request->input('baron_id');
        $start_date = $request->input('start_date');
        $end_date = $request->input('end_date');
        $payment = $request->input('payment');

        $deliveries = array();

        if ($payment == 'manager-cash') {
            $receipts = Receipt::where('created_at', '>=', date('Y-m-d 00:00:00', strtotime($start_date)))
                ->where('created_at', '<=', date('Y-m-d 23:59:59', strtotime($end_date)))
                ->where('cash', '>', 0)
                ->get();

            $list = [];

            foreach ($receipts as $receipt) {
                array_push($list, array(
                    'created_at' => $receipt->created_at,
                    'quantity' => '',
                    'type_name' => '',
                    'price' => $receipt->cash,
                    'payment_method' => 'cash',
                ));
            }
        } else if ($payment == 'manager-credit') {
            $receipts = Receipt::where('created_at', '>=', date('Y-m-d 00:00:00', strtotime($start_date)))
                ->where('created_at', '<=', date('Y-m-d 23:59:59', strtotime($end_date)))
                ->where('credit', '>', 0)
                ->get();

            $list = [];

            foreach ($receipts as $receipt) {
                array_push($list, array(
                    'created_at' => $receipt->created_at,
                    'quantity' => '',
                    'type_name' => '',
                    'price' => $receipt->credit,
                    'payment_method' => 'credit',
                ));
            }
        } else {
            $orderListQuery = Order::where('created_at', '>=', date('Y-m-d 00:00:00', strtotime($start_date)))
                ->where('created_at', '<=', date('Y-m-d 23:59:59', strtotime($end_date)))
                ->where('status', 'complete')
                ->where('payment_method', $payment);

            if ($baron_id != 'all') {
                $orderListQuery = $orderListQuery->where('baron_id', $baron_id);
            }

            $orderList = $orderListQuery->get();

            $list = collect();
            foreach ($orderList as $order) {
                foreach ($order->items as $item) {
                    $item->payment_method = $item->order->payment_method;
                    $list = $list->push($item);
                }
                if ($order->delivery == 'yes') {
                    $date = date('Y-m-d', strtotime($order->created_at));
                    if (isset($deliveries[$date])) {
                        $deliveries[$date]['price'] += $order->delivery_fee * $order->delivery_distance;
                        $deliveries[$date]['quantity'] ++;
                    } else {
                        $deliveries[$date] = array(
                            'price' => $order->delivery_fee * $order->delivery_distance,
                            'created_at' => $order->created_at,
                            'quantity' => 1,
                            'type_name' => 'Delivery',
                            'payment_method' => $payment,
                        );
                    }
                }
            }

            foreach ($deliveries as $delivery) {
                $item = new OrderItem($delivery);
                $item->payment_method = $delivery['payment_method'];
                $item->created_at = date('Y-m-d 23:59:59', strtotime($delivery['created_at']));
                $list->push($item);
            }

            $list = $list->sortBy(function($item) {
                return strtotime($item->created_at);
            });

            $list = $list->values()->all();
        }

        return response()->json(['success' => true, 'list' => $list], 200);
    }

    public function searchStock(Request $request) {
        $type       = $request->input('type');
        $start_date = $request->input('start_date');
        $end_date   = $request->input('end_date');

        $originSoldList = OrderItem::where('created_at', '>=', date('Y-m-d 00:00:00', strtotime($start_date)))
            ->where('created_at', '<=', date('Y-m-d 23:59:59', strtotime($end_date)))
            ->where('type_id', $type)
            ->where('status', 'complete')
            ->get();

        $soldList = collect();
        foreach ($originSoldList as $item) {
            $item->payment_method = $item->order->payment_method;
            $soldList = $soldList->push($item);
        }

        $purchaseList = Purchase::where('created_at', '>=', date('Y-m-d 00:00:00', strtotime($start_date)))
            ->where('created_at', '<=', date('Y-m-d 23:59:59', strtotime($end_date)))
            ->where('type_id', $type)
            ->get();

        return response()->json(['success' => true, 'soldList' => $soldList, 'purchaseList' => $purchaseList], 200);
    }

    public function deleteItem(Request $request) {
        $data = $request->input('data');

        $id = $data['id'];
        OrderItem::destroy($id);

        $order = Order::find($data['order_id']);
        $order->price = $order->calculatePrice();
        $order->save();

        return response()->json(['success' => true], 200);
    }

    public function getUID() {
        $maxBasketId = Basket::max('uid');
        $maxOrderId = Order::max('uid');
        $maxId = max($maxOrderId, $maxBasketId);

        $date = explode('.', $maxId)[0];
        $count = explode('.', $maxId)[1];

        $year = explode('/', $date)[0];
        $month = explode('/', $date)[1];

        $currentYear = date('Y');
        $currentMonth = date('m');

        if ($currentYear != $year || $currentMonth != $month) {
            return "$currentYear/$currentMonth.AA/0000";
        }

        $decimalCount = $this->uid2decimal($count) + 1;
        return "$currentYear/$currentMonth." . $this->decimal2uid($decimalCount);
    }

    private function uid2decimal($uid) {
        $mapArray = array(
            'A' => 0,
            'B' => 1,
            'C' => 2,
            'D' => 3,
            'E' => 4,
            'F' => 5,
            'G' => 6,
            'H' => 7,
            'I' => 8,
            'J' => 9,
            'k' => 10,
            'l' => 11,
            'M' => 12,
            'N' => 13,
            'O' => 14,
            'P' => 15,
            'Q' => 16,
            'R' => 17,
            'S' => 18,
            'T' => 19,
            'U' => 20,
            'V' => 21,
            'W' => 22,
            'X' => 23,
            'Y' => 24,
            'Z' => 25,
        );

        $letters = explode('/', $uid)[0];
        $digits = explode('/', $uid)[1];

        return $mapArray[substr($letters, 0, 1)] * 260000 + $mapArray[substr($letters, 1,1)] * 10000 + intval($digits);
    }

    private function decimal2uid($decimal) {
        $mapArray = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'];
        $largeNumber = floor($decimal / pow(10, 4));

        return $mapArray[intval(floor($largeNumber / 26))] . $mapArray[intval($largeNumber % 26)] . '/' . str_pad($decimal % 10000, 4, '0', STR_PAD_LEFT);
    }
}
