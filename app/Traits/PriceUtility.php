<?php
/**
 * Created by PhpStorm.
 * User: Steel
 * Date: 8/2/2019
 * Time: 11:50 AM
 */

namespace App\Traits;

use App\Setting;

trait PriceUtility
{
    /**
     * Get price settings
     *
     * @return array
     */
    private function getPriceSettings() {
        $deliveryPriceSetting = Setting::where('name', 'delivery-per-km')->first();
        if (is_null($deliveryPriceSetting)) {
            $deliveryPerKm = '';
        } else {
            $deliveryPerKm = $deliveryPriceSetting->value;
        }

        $arisingPriceSetting = Setting::where('name', 'arising-per-m')->first();
        if (is_null($arisingPriceSetting)) {
            $arisingPerM = '';
        } else {
            $arisingPerM = $arisingPriceSetting->value;
        }

        $hArisingPriceSetting = Setting::where('name', 'hard-arising-per-m')->first();
        if (is_null($hArisingPriceSetting)) {
            $hArisingPerM = '';
        } else {
            $hArisingPerM = $hArisingPriceSetting->value;
        }

        $drillingPriceSetting = Setting::where('name', 'drilling-per-hole')->first();
        if (is_null($drillingPriceSetting)) {
            $drillingPerHole = '';
        } else {
            $drillingPerHole = $drillingPriceSetting->value;
        }

        $hardeningPriceSetting = Setting::where('name', 'hardening-per-m')->first();
        if (is_null($hardeningPriceSetting)) {
            $hardeningPerM = '';
        } else {
            $hardeningPerM = $hardeningPriceSetting->value;
        }

        $price = array(
            'deliveryPerKm'   => $deliveryPerKm,
            'arisingPerM'     => $arisingPerM,
            'hArisingPerM'    => $hArisingPerM,
            'drillingPerHole' => $drillingPerHole,
            'hardeningPerM'   => $hardeningPerM,
        );

        return $price;
    }
}