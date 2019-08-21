<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Setting;
use Illuminate\Http\Request;

class SettingController extends Controller
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

    public function savePrice(Request $request) {
        $deliveryPrice  = $request->get('delivery-price');
        $arisingPrice   = $request->get('arising-price');
        $hArisingPrice  = $request->get('hard-arising-price');
        $drillingPrice  = $request->get('drilling-price');
        $hardeningPrice = $request->get('hardening-price');

        // Delivery Price per KM
        $deliveryPriceSetting = Setting::where('name', 'delivery-per-km')->first();

        if (is_null($deliveryPriceSetting)) {
            $deliveryPriceSetting = new Setting();
            $deliveryPriceSetting->name = 'delivery-per-km';
        }
        $deliveryPriceSetting->value = $deliveryPrice;
        $deliveryPriceSetting->save();
        // End Delivery Price per KM

        // Arising Price per M
        $arisingPriceSetting = Setting::where('name', 'arising-per-m')->first();

        if (is_null($arisingPriceSetting)) {
            $arisingPriceSetting = new Setting();
            $arisingPriceSetting->name = 'arising-per-m';
        }
        $arisingPriceSetting->value = $arisingPrice;
        $arisingPriceSetting->save();
        // End Arising Price per M

        // Hard Arising Price per M
        $hArisingPriceSetting = Setting::where('name', 'hard-arising-per-m')->first();

        if (is_null($hArisingPriceSetting)) {
            $hArisingPriceSetting = new Setting();
            $hArisingPriceSetting->name = 'hard-arising-per-m';
        }
        $hArisingPriceSetting->value = $hArisingPrice;
        $hArisingPriceSetting->save();
        // End Hard Arising Price per M

        // Drilling Price per Hole
        $drillingPriceSetting = Setting::where('name', 'drilling-per-hole')->first();

        if (is_null($drillingPriceSetting)) {
            $drillingPriceSetting = new Setting();
            $drillingPriceSetting->name = 'drilling-per-hole';
        }
        $drillingPriceSetting->value = $drillingPrice;
        $drillingPriceSetting->save();
        // End Drilling Price per Hole

        // Hardening Price per M
        $hardeningPriceSetting = Setting::where('name', 'hardening-per-m')->first();

        if (is_null($hardeningPriceSetting)) {
            $hardeningPriceSetting = new Setting();
            $hardeningPriceSetting->name = 'hardening-per-m';
        }
        $hardeningPriceSetting->value = $hardeningPrice;
        $hardeningPriceSetting->save();
        // End Hardening Price per M

        return response()->json(['success' => true], 200);
    }
}
