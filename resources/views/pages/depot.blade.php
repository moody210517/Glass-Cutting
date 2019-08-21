@extends('layouts.basic')

@section('title')Manage Depot @endsection

@section('content')
    <div class="d-flex flex-column flex">
        <div id="content-body">
            <div class="p-3 p-md-5">
                <div class="card p-0 col-12">
                    <div class="row no-gutters hide-print">
                        <div class="col-md-12">
                            <div class="p-4">
                                <h1 class="card-title text-center">{{ strtoupper(__('Glass Baron')) }}</h1>
                                <h5 class="mb-4 text-center">{{ __('Manage Depot') }}</h5>
                                <h5 class="mb-4">{{ __('All orders:') }}</h5>

                                <div class="padding">
                                    <div class="table-responsive pb-3">
                                        <table id="datatable" class="table table-theme table-row v-middle" data-plugin="dataTable" data-option="{paging:false}">
                                            <thead>
                                            <tr>
                                                <th><span class="text-muted">No.</span></th>
                                                <th><span class="text-muted">Name</span></th>
                                                <th><span class="text-muted">Type</span></th>
                                                <th><span class="text-muted">Quantity</span></th>
                                                <th><span class="text-muted">Width</span></th>
                                                <th><span class="text-muted">Height</span></th>
                                                <th><span class="text-muted">Arising</span></th>
                                                <th><span class="text-muted">Hard Arising</span></th>
                                                <th><span class="text-muted">Drilling</span></th>
                                                <th><span class="text-muted">Hardening</span></th>
                                                <th><span class="text-muted">Price</span></th>
                                                <th><span class="text-muted">Baron name</span></th>
                                                <th><span class="text-muted">Status</span></th>
                                                <th></th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            @php $id = 1; @endphp
                                            @foreach ($orders as $order)
                                                @php $total = 0; @endphp
                                                @foreach($order->items as $item)
                                                    @if ($item->type == 'glass')
                                                        @php $total ++; @endphp
                                                    @endif
                                                @endforeach
                                                @php $count = 1; @endphp
                                                @foreach ($order->items as $item)
                                                    @if ($item->status != 'complete')
                                                    <tr data-id="{{ $item->id }}" data-printed="{{ $item->printed }}" data-total="{{ $total }}" data-count="{{ $count }}" data-order='@json($order)' data-item='@json($item)' data-baron='@json($order->baron)'>
                                                        <td>
                                                            <small class="text-muted">{{ $id }}</small>
                                                        </td>
                                                        <td class="flex">{{ $order->customer_name }}</td>
                                                        <td>{{ $item->type_name }}</td>
                                                        <td>{{ $item->quantity }}</td>
                                                        <td>{{ $item->type == 'tool' ? '' : $item->width }}</td>
                                                        <td>{{ $item->type == 'tool' ? '' : $item->height }}</td>
                                                        <td>{{ $item->type == 'tool' ? '' : $item->arising }}</td>
                                                        <td>{{ $item->type == 'tool' ? '' : $item->hard_arising }}</td>
                                                        <td>{{ $item->type == 'tool' ? '' : $item->drilling }}</td>
                                                        <td>{{ $item->type == 'tool' ? '' : $item->hardening }}</td>
                                                        <td>{{ $item->type == 'tool' ? '' : $item->price }}</td>
                                                        <td>
                                                            <span class="item-amount text-sm ">{{ $order->baron->name }}</span>
                                                        </td>
                                                        <td>
                                                            <span class="badge @if($item->status == 'delivered') badge-danger @elseif($item->status == 'processing') badge-warning @else badge-success @endif">{{ ucfirst($item->status) }}</span>
                                                        </td>
                                                        <td class="btn-group-vertical">
                                                            <button class="btn btn-raised btn-wave btn-sm btn-rounded i-con-h-a btn-primary print-btn"><i class="i-con i-con-photo"><i></i></i></i> Print</button>
                                                            @if ($item->status == 'delivered')
                                                                <button class="btn btn-raised btn-wave btn-sm btn-rounded i-con-h-a btn-warning process-btn"><i class="i-con i-con-archive"><i></i></i></i> Process</button>
                                                            @elseif ($item->status == 'processing')
                                                                <button class="btn btn-raised btn-wave btn-sm btn-rounded i-con-h-a btn-success complete-btn"><i class="i-con i-con-ok"><i></i></i></i> Complete</button>
                                                            @endif
                                                        </td>
                                                    </tr>
                                                    @php $count ++; @endphp
                                                    @php $id ++; @endphp
                                                    @endif
                                                @endforeach
                                            @endforeach
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <style>
                        @media all {
                            #print{
                                display: none;
                            }
                        }
                        @media print {
                            #print{
                                display: block;
                            }
                            .hide-print{
                                display: none;
                            }
                        }
                    </style>

                    <div id="print" class="bg-white text-dark">
                        <div class="p-4">
                            <h1 class="text-center pb-2">GLASS BARON</h1>
                            <div class="row mb-2">
                                <div class="col-md-3">
                                    <h5>Name</h5>
                                </div>
                                <div class="col-md-9">
                                    <h5 id="customer-name"></h5>
                                </div>
                            </div>
                            <div class="row mb-2">
                                <div class="col-md-3">
                                    <h5>Address</h5>
                                </div>
                                <div class="col-md-9">
                                    <h5 id="customer-address"></h5>
                                </div>
                            </div>
                            <div class="row mb-2">
                                <div class="col-md-3">
                                    <h5>Email</h5>
                                </div>
                                <div class="col-md-9">
                                    <h5 id="customer-email"></h5>
                                </div>
                            </div>
                            <div class="row mb-2">
                                <div class="col-md-3">
                                    <h5>Tel</h5>
                                </div>
                                <div class="col-md-9">
                                    <h5 id="customer-phone"></h5>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-12" id="order-detail"></div>
                            </div>
                            <div class="row pt-4">
                                <div class="col-12">
                                    <span id="print-delivery-status"></span>
                                </div>
                            </div>
                            <div class="row pt-2">
                                <div class="col-9 offset-3">
                                    <span id="count"></span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

@section('scripts')
    <script>
        $(document).ready(function() {
            $('#datatable').delegate('.process-btn', 'click', function() {
                let id = $(this).parents('tr').data('id'), that = this;

                $.ajax({
                    url: '{{ route('order.process') }}',
                    type: 'POST',
                    data: {
                        _token: $('meta[name="csrf-token"]').attr('content'),
                        id: id,
                    },
                    success: function() {
                        $(that).removeClass('process-btn').removeClass('btn-warning').addClass('btn-success').addClass('complete-btn').html('<i class="i-con i-con-ok"><i></i></i></i> Complete');
                        $(that).parent().prev().html('<span class="badge badge-warning">Processing</span>');
                    },
                });
            }).delegate('.complete-btn', 'click', function() {
                let $tr = $(this).parents('tr'), id = $tr.data('id'), that = this;

                if ($tr.attr('data-printed') === 'no') {
                    alert('You have to print the item at least once.');
                    return;
                }

                $.ajax({
                    url: '{{ route('order.complete') }}',
                    type: 'POST',
                    data: {
                        _token: $('meta[name="csrf-token"]').attr('content'),
                        id: id,
                    },
                    success: function() {
                        $(that).parent().prev().html('<span class="badge badge-success">Complete</span>');
                        $tr.remove();
                    },
                });
            });

            $('.print-btn').on('click', function() {
                let $tr = $(this).parents('tr'),
                    orderData = $tr.data('order'),
                    itemData = $tr.data('item');

                $('#customer-name').text(orderData.customer_name);
                $('#customer-address').text(orderData.customer_address);
                $('#customer-email').text(orderData.customer_id);
                $('#customer-phone').text(orderData.customer_phone);

                if (itemData.type === 'glass') {
                    $('#order-detail').text(
                        itemData.type_name +
                        ' Width: ' + itemData.width +
                        ' Height: ' + itemData.height +
                        ' Quantity: ' + itemData.quantity +
                        ' Arising: ' + itemData.arising + (itemData.arising === 'yes' ? ' (R ' + parseFloat(itemData.arising_fee) * 2 * (parseFloat(itemData.width) + parseFloat(itemData.height)) * parseFloat(itemData.quantity) / Math.pow(10, 3) + ')' : '') +
                        ' Hard Arising: ' + itemData.hard_arising + (itemData.hard_arising === 'yes' ? ' (R ' + parseFloat(itemData.hard_arising_fee) * 2 * (parseFloat(itemData.width) + parseFloat(itemData.height)) * parseFloat(itemData.quantity) / Math.pow(10, 3) + ')' : '') +
                        ' Drilling: ' + itemData.drilling + (itemData.drilling > 0 ? ' (R ' + parseFloat(itemData.drilling_fee) * parseFloat(itemData.quantity) * parseFloat(itemData.drilling) + ')' : '') +
                        ' Hardening: ' + itemData.hardening + (itemData.hardening === 'yes' ? ' (R ' + parseFloat(itemData.hardening_fee) * parseFloat(itemData.width) * parseFloat(itemData.height) * parseFloat(itemData.quantity) / Math.pow(10, 6) + ')' : '') +
                        ' Special Cutting: ' + (itemData.special_cut === 'yes' ? ' (R ' + parseFloat(itemData.special_cut_amount) * parseFloat(itemData.quantity) + ')' : 'no') +
                        ' Price: ' + itemData.price
                    );
                } else {
                    $('#order-detail').text(
                        itemData.type_name +
                        ' Quantity: 1 ' +
                        ' Price: ' + itemData.price
                    );
                }

                $('#count').text('Order ' + $tr.data('count') + ' of ' + $tr.data('total'));

                if (orderData.delivery === 'yes') {
                    $('#print-delivery-status').text('Delivery: Yes');
                } else {
                    $('#print-delivery-status').text('Pick up ' + $tr.data('baron').name);
                }

                window.print();

                if ($tr.data('printed') === 'no') {
                    setTimeout(function () {
                        $.ajax({
                            url: '{{ route('order.print') }}',
                            type: 'POST',
                            data: {
                                _token: $('meta[name="csrf-token"]').attr('content'),
                                id: itemData.id,
                            },
                            success: function () {
                                $tr.attr('data-printed', 'yes');
                            }
                        });
                    }, 100);
                }
            });
        });
    </script>
@endsection