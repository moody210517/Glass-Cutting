<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'baron_id',
        'user_id',
        'customer_name',
        'customer_address',
        'customer_id',
        'customer_phone',
        'delivery',
        'delivery_fee',
        'delivery_distance',
        'payment_method',
        'price',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
    ];

    public function getUserAttribute() {
        return $this->hasOne('App\User', 'id', 'user_id')->first();
    }

    public function getBaronAttribute() {
        if ($this->baron_id) {
            return $this->hasOne('App\Baron', 'id', 'baron_id')->first();
        } else {
            return new Baron(array('name' => 'None'));
        }
    }

    public function getDepotAttribute() {
        return $this->hasOne('App\User', 'id', 'depot_id')->first();
    }

    public function getItemsAttribute() {
        return $this->hasMany('App\OrderItem', 'order_id', 'id')->get();
    }

    public function calculatePrice() {
        $price = 0;
        if ($this->delivery == 'yes') {
            $price = $this->delivery_fee * $this->delivery_distance;
        }
        $items = $this->items;

        foreach ($items as $item) {
            $price += $item->price;
        }

        return $price;
    }
}
