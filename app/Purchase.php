<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Purchase extends Model
{
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'type',
        'type_id',
        'type_name',
        'width',
        'height',
        'quantity',
        'cost',
        'user_id',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
    ];

    public function getUserAttribute() {
        return $this->hasOne('App\User', 'user_id', 'id')->get();
    }
}
