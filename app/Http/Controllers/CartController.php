<?php

namespace App\Http\Controllers;

use App\Cart;
use App\Item;
use App\Order;
use App\User;
use Illuminate\Http\Request;

class CartController extends Controller
{
    public function index()
    {
        $cart = Cart::with('items')->where('user_id', auth()->user()->id)->first();
        $orders = Order::with('items')->where('user_id', auth()->user()->id)->get();
        
        return view('cart.index', compact('cart', 'orders'));
    }

    public function addItem($item_id)
    {
        $user_id = auth()->user()->id;
        $cart = Cart::where('user_id', $user_id)->first();

        // Check if user's cart exists
        if (!$cart)
        {
            $cart = new Cart;
            $cart->user_id = $user_id;
            $cart->save();
        }

        // Get cart with items
        $cart = Cart::with('items')->where('id', $cart->id)->first();

        // Convert to array of ids
        $cart_items = array_map(function ($items) {
            return ($items['id']);
        }, $cart->items->toArray());

        if(in_array($item_id, $cart_items))
        {
            return redirect(route('items.index'))->with('success', 'Item already added, You can edit quantity from cart');
        }
        else
        {
            $item = Item::find($item_id);
            $cart->items()->save($item, ['quantity' => 1]);
            return redirect(route('items.index'))->with('success', 'Item added to cart');
        }
    }

    public function plusOne($item_id)
    {
        $cart = Cart::where('user_id', auth()->user()->id)->first();
        $existing_qty = $cart->items()->where('item_id', $item_id)->pluck('quantity')->first();
        $cart->items()->updateExistingPivot($item_id, ['quantity' => $existing_qty + 1]);
        return redirect(route('cart.index'))->with('success', 'Updated!');
    }

    public function minusOne($item_id)
    {
        $cart = Cart::where('user_id', auth()->user()->id)->first();
        $existing_qty = $cart->items()->where('item_id', $item_id)->pluck('quantity')->first();

        if($existing_qty <= 1)
        {
            $cart->items()->detach($item_id);
        }
        else
        {
            $cart->items()->updateExistingPivot($item_id, ['quantity' => $existing_qty - 1]);
        }

        return redirect(route('cart.index'))->with('success', 'Updated!');
    }
}
