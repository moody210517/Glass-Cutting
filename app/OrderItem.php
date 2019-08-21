<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class OrderItem extends Model
{
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'order_id',
        'processed_by',
        'completed_by',
        'type',
        'type_id',
        'type_name',
        'type_price',
        'category_name',
        'width',
        'height',
        'quantity',
        'arising',
        'arising_fee',
        'hard_arising',
        'hard_arising_fee',
        'drilling',
        'drilling_fee',
        'hardening',
        'hardening_fee',
        'special_cut',
        'special_cut_amount',
        'price',
        'printed',
        'status',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
    ];

    public function getGlassAttribute() {
        return $this->hasOne('App\GlassType', 'id', 'type_id')->first();
    }

    public function getOrderAttribute() {
        return $this->hasOne('App\Order', 'id', 'order_id')->first();
    }
}
