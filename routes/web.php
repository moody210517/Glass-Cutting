<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Auth::routes();

Route::get('/', 'HomeController@index')->name('home');
Route::post('/decide-action', 'HomeController@decideAction')->name('decide-action');

Route::get(config('action.modify-order'),   'HomeController@modifyOrder'  )->name(config('action.modify-order'));
Route::post(config('action.create-order'),  'HomeController@createOrder'  )->name(config('action.create-order'));
Route::get(config('action.info-order'),     'HomeController@infoOrder'    )->name(config('action.info-order'));
Route::get(config('action.depot-manage'),   'HomeController@depotManage'  )->name(config('action.depot-manage'));
Route::get(config('action.record-receipt'), 'HomeController@recordReceipt')->name(config('action.record-receipt'));
Route::get(config('action.add-stock'),      'HomeController@addStock'     )->name(config('action.add-stock'));
Route::get(config('action.change-stock'),   'HomeController@changeStock'  )->name(config('action.change-stock'));
Route::get(config('action.count-stock'),    'HomeController@countStock'   )->name(config('action.count-stock'));

Route::group(['prefix' => '/basket'], function() {
    Route::get('/show',    'BasketController@show'  )->name('basket.show');
    Route::post('/save',    'BasketController@save'  )->name('basket.save');
    Route::post('/update',  'BasketController@update')->name('basket.update');
    Route::post('/delete',  'BasketController@delete')->name('basket.delete');
});

Route::group(['prefix' => '/order'], function() {
    Route::get('/all',       'OrderController@getAll'     )->name('order.all');
    Route::get('/show',      'OrderController@show'       )->name('order.show');
    Route::post('/create',   'OrderController@store'      )->name('order.create');
    Route::post('/update',   'OrderController@update'     )->name('order.update');
    Route::post('/process',  'OrderController@process'    )->name('order.process');
    Route::post('/print',    'OrderController@printOrder' )->name('order.print');
    Route::post('/complete', 'OrderController@complete'   )->name('order.complete');
    Route::post('/item/delete', 'OrderController@deleteItem'   )->name('order.item.delete');

    Route::post('/search',         'OrderController@search'     )->name('order.search');
    Route::post('/search/stock',   'OrderController@searchStock')->name('stock.search');

    Route::post('/uid/get',        'OrderController@getUID'     )->name('order.uid.get');
});

Route::group(['prefix' => '/admin'], function() {
    Route::group(['prefix' => '/setting'], function() {
        Route::post('/price/save', 'Admin\SettingController@savePrice')->name('setting.price.save');
    });

    Route::group(['prefix' => '/glass-type'], function() {
        Route::post('/save', 'Admin\GlassTypeController@save')->name('type.save');
    });

    Route::group(['prefix' => '/receipt'], function() {
        Route::post('/save', 'Admin\ReceiptController@save')->name('receipt.save');
    });

    Route::group(['prefix' => '/purchase'], function() {
        Route::post('/new', 'Admin\StockController@addStock')->name('stock.purchase');
    });

    Route::group(['prefix' => '/users'], function() {
        Route::get('/',              'Admin\UserController@index' )->name('user.all');
        Route::get('/get/{id}',      'Admin\UserController@show'  )->name('user.get');
        Route::post('/update/{id}',  'Admin\UserController@modify')->name('user.modify');
        Route::get('/create',        'Admin\UserController@create')->name('user.create');
        Route::post('/store',        'Admin\UserController@store' )->name('user.store');
        Route::get('/delete/{id}',   'Admin\UserController@delete')->name('user.delete');
    });

    Route::group(['prefix' => '/barons'], function() {
        Route::get('/',              'Admin\BaronController@index' )->name('baron.all');
        Route::get('/get/{id}',      'Admin\BaronController@show'  )->name('baron.get');
        Route::post('/update/{id}',  'Admin\BaronController@modify')->name('baron.modify');
        Route::get('/create',        'Admin\BaronController@create')->name('baron.create');
        Route::post('/store',        'Admin\BaronController@store' )->name('baron.store');
        Route::get('/delete/{id}',   'Admin\BaronController@delete')->name('baron.delete');
    });

    Route::group(['prefix' => '/roles'], function() {
        Route::get('/', 'Admin\RoleController@index')->name('role.all');
    });

    Route::group(['prefix' => '/permissions'], function() {
        Route::get('/', 'Admin\PermissionController@index')->name('permission.all');
    });
});
