@extends('layouts.app')

@section('content')
	<div class="container">
		@if($message = Session::get('success'))
				<div class="alert alert-success">
					{{$message}}
				</div>
		@endif

		@if($message = Session::get('error'))
				<div class="alert alert-danger">
					{{$message}}
				</div>
		@endif

		<div>
			<h3 class="float-left">My Cart</h3>
		</div>

		<table class="table">
			<thead>
				<tr>
					<th>ID</th>
					<th>Title</th>
					<th>Quantity</th>
					<th>Price</th>
					<th>Edit</th>
				</tr>
			</thead>
			<tbody>
				@foreach($cart->items as $item)
				<tr>
					<td>{{ $item->id }}</td>
					<td>{{ $item->title }}</td>
					<td>{{ $item->pivot->quantity }}</td>
					<td>{{ $item->pivot->quantity * $item->price }}</td>
					<td>
						<a href="{{ route('cart.plus1', $item->id) }}" class="btn btn-success">+</a>
						<a href="{{ route('cart.minus1', $item->id) }}" class="btn btn-danger">-</a>
					</td>
				</tr>
				@endforeach
			</tbody>
		</table>
		<div class="text-center">
			<a href="{{ route('order.place') }}" class="btn btn-success">Buy Now</a>
		</div>

		<hr>

		<div>
			<h3 class="float-left">My Orders</h3>
		</div>
		<table class="table">
			<thead>
				<tr>
					<th>Order ID</th>
					<th>Order Time</th>
					<th>Total Items</th>
					{{-- <th>Total Price</th> --}}
					<th>Actions</th>
				</tr>
			</thead>
			<tbody>
				@foreach($orders as $order)
				<tr>
					<td>{{ $order->id }}</td>
					<td>{{ $order->created_at }}</td>
					<td>{{ count($order->items) }}</td>
					{{-- <td>{{ array_sum($order->items) }}</td> --}}
					<td>
						<a href="{{ route('order.show', $order->id) }}">Show</a>
					</td>
				</tr>
				@endforeach
			</tbody>
		</table>
	</div>
@endsection