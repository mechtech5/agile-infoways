<?php

namespace App\Http\Controllers;

use App\Cart;
use App\Order;
use Illuminate\Http\Request;

class OrderController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function placeOrder()
    {
        $user_id = auth()->user()->id;

        // Get cart with items
        $cart = Cart::with('items')->where('user_id', $user_id)->first();

        if(count($cart->items) == 0)
        {
            return redirect(route('cart.index'))->with('error', 'Your cart is empty!');
        }

        $order = new Order;
        $order->user_id = $user_id;
        $order->save();

        foreach($cart->items as $item)
        {
            $order->items()->attach($item->id, ['quantity' => $item->pivot->quantity]);
        }

        $cart->items()->detach();

        return redirect(route('order.show', $order->id))->with('success', 'Order Placed');
    }

    public function show($id)
    {
        $order = Order::with('items')->where('id', $id)->first();
        return view('order.show', compact('order'));
    }

}
