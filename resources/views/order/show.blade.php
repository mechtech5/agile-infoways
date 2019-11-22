@extends('layouts.app')

@section('content')
@php
$total_quan = 0;
$total_price = 0.00;
@endphp
	<div class="container">
		<div class="card">
			<div class="card-header">
				<div class="card-title">Order Details</div>
			</div>
			<div class="card-body">
				<p>Order ID: {{ $order->id }}</p>
				<p>Order Time: {{ $order->created_at }}</p>
				<table class="table">
					<thead>
						<tr>
							<th>ID</th>
							<th>Title</th>
							<th>Quantity</th>
							<th>Price</th>
						</tr>
					</thead>
					<tbody>
						@foreach($order->items as $item)
						@php
							$total_quan +=  $item->pivot->quantity ;
							$total_price += $item->pivot->quantity * $item->price;
						@endphp
						<tr>
							<td>{{ $item->id }}</td>
							<td>{{ $item->title }}</td>
							<td>{{ $item->pivot->quantity }}</td>
							<td>{{ $item->pivot->quantity * $item->price }}</td>
						</tr>
						@endforeach
					</tbody>
					<tfoot>
				    <tr class="bg-primary text-white">
				      <td colspan='2' class='text-center'>Total</td>
				      <td >{{$total_quan}}</td>
				      <td>{{$total_price}}</td>
				    </tr>
  				</tfoot>
				</table>
			</div>
		</div>
	</div>
@endsection