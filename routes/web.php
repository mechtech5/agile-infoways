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

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::resource('/items', 'ItemController');
Route::resource('/cart', 'CartController');
Route::resource('/order', 'OrderController');


Route::get('/cart/add/{item_id}', 'CartController@addItem')->name('cart.add');
Route::get('/cart/plus/{item_id}', 'CartController@plusOne')->name('cart.plus1');
Route::get('/cart/minus/{item_id}', 'CartController@minusOne')->name('cart.minus1');
Route::get('/place_order', 'OrderController@placeOrder')->name('order.place');

