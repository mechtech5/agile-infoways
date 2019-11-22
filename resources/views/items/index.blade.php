@extends('layouts.app')

@section('content')
	<div class="container-fluid">
		@if($message = Session::get('success'))
				<div class="alert alert-success">
					{{$message}}
				</div>
		@endif
		
		<div>
			<h3 class="float-left">Our Products</h3>
			<span class="float-right">{{ $items->links() }}</span>
		</div>
		
		<table class="table">
			<thead>
				<tr>
					<th>ID</th>
					<th>Title</th>
					<th>Description</th>
					<th>Image</th>
					<th>Price</th>
					<th>Add to Cart</th>
				</tr>
			</thead>
			<tbody>
				@foreach($items as $item)
				<tr>
					<td>{{ $item->id }}</td>
					<td>{{ $item->title }}</td>
					<td style="width: 30%">{{ $item->description }}</td>
					<td><img src="{{ $item->image }}" alt="{{ $item->title }}"></td>
					<td>{{ $item->price }}</td>
					<td>
						@if(in_array($item->id, $cart_items))
							<span>Added to cart</span>
						@else
							<a href="{{ route('cart.add', $item->id) }}" class="btn btn-primary">Add</a>
						@endif
					</td>
				</tr>
				@endforeach
			</tbody>
		</table>
		<div>
			<span class="float-right">{{ $items->links() }}</span>
		</div>
		
	</div>
@endsection