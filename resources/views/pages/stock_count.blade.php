@extends('layouts.basic')

@section('title')Count Stock @endsection

@section('styles')
    <link rel="stylesheet" href="{{ asset('/css/lib/dataTables.bootstrap4.css') }}" />
@endsection

@section('content')
    <div class="d-flex flex-column flex">
        <div id="content-body">
            <div class="p-3 p-md-5">
                <div class="card p-0 col-lg-10 offset-lg-1">
                    <div class="row no-gutters">
                        <div class="col-md-12">
                            <div class="p-4">
                                <h1 class="card-title text-center">{{ strtoupper(__('Glass Baron')) }}</h1>
                                <h5 class="mb-4 text-center">{{ __('Count Stock') }}</h5>

                                <div id="search-panel" class="my-5">
                                    <div class="row">
                                        <div class="col-md-3">
                                            <label>Date: </label>
                                        </div>
                                        <div class="col-md-6">
                                            <div class='input-group input-daterange mb-3' data-plugin="datepicker" data-option="{format: 'dd/mm/yyyy'}">
                                                <input type='text' class="form-control" id="start-date" autocomplete="off">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text">to</span>
                                                </div>
                                                <input type='text' class="form-control" id="end-date" autocomplete="off">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-12">
                                            <label>Glass Type: </label>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-3 mb-2">
                                            <select class="form-control glass-type-select" id="category-1" data-category="1" data-plugin="select2" data-option="{}" data-placeholder="Clear Monolithic">
                                                <option></option>
                                                @foreach ($glassTypes as $type)
                                                    @if ($type->category == 'Clear Monolithic')
                                                        <option value="{{ $type->id }}" >{{$type->name}}</option>
                                                    @endif
                                                @endforeach
                                            </select>
                                        </div>
                                        <div class="col-md-3 mb-2">
                                            <select class="form-control glass-type-select" id="category-2" data-category="2" data-plugin="select2" data-option="{}" data-placeholder="Clear Laminated">
                                                <option></option>
                                                @foreach ($glassTypes as $type)
                                                    @if ($type->category == 'Clear Laminated')
                                                        <option value="{{ $type->id }}" >{{$type->name}}</option>
                                                    @endif
                                                @endforeach
                                            </select>
                                        </div>
                                        <div class="col-md-2 mb-2">
                                            <select class="form-control glass-type-select" id="category-3" data-category="3" data-plugin="select2" data-option="{}" data-placeholder="Obscure">
                                                <option></option>
                                                @foreach ($glassTypes as $type)
                                                    @if ($type->category == 'Obscure')
                                                        <option value="{{ $type->id }}" >{{$type->name}}</option>
                                                    @endif
                                                @endforeach
                                            </select>
                                        </div>
                                        <div class="col-md-2 mb-2">
                                            <select class="form-control glass-type-select" id="category-4" data-category="4" data-plugin="select2" data-option="{}" data-placeholder="Tinted">
                                                <option></option>
                                                @foreach ($glassTypes as $type)
                                                    @if ($type->category == 'Tinted')
                                                        <option value="{{ $type->id }}" >{{$type->name}}</option>
                                                    @endif
                                                @endforeach
                                            </select>
                                        </div>
                                        <div class="col-md-2 mb-2">
                                            <select class="form-control glass-type-select" data-plugin="select2" data-option="{}" data-placeholder="Miscellaneous">
                                                <option></option>
                                                @foreach ($glassTypes as $type)
                                                    @if ($type->category == 'Miscellaneous')
                                                        <option value="{{ $type->id }}" >{{$type->name}}</option>
                                                    @endif
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                </div>

                                <div id="list-sold" class="b-t b-t-dark py-3">
                                    <h5>Stock Sold</h5>
                                    <div class="table-responsive pb-3">
                                        <table id="datatable-1" class="table table-theme table-row v-middle" data-plugin="dataTable">
                                            <thead>
                                            <tr>
                                                <th><span class="text-muted">ID</span></th>
                                                <th><span class="text-muted">Date</span></th>
                                                <th><span class="text-muted">Quantity</span></th>
                                                <th><span class="text-muted">Width</span></th>
                                                <th><span class="text-muted">Height</span></th>
                                                <th><span class="text-muted">Type</span></th>
                                                <th><span class="text-muted">Edging</span></th>
                                                <th><span class="text-muted">Total</span></th>
                                                <th><span class="text-muted">Method of payment</span></th>
                                            </tr>
                                            </thead>
                                            <tbody></tbody>
                                        </table>
                                    </div>
                                    <h5 class="text-right mt-3">Items: <span id="items-count-1">0</span> <span class="text-muted">/</span> Total Area: <span id="total-area-1">0</span> <span class="text-muted">/</span> Total Sales: <span id="total-sales-1">0</span></h5>
                                </div>

                                <div id="list-purchased" class="b-t b-t-dark py-3">
                                    <h5>Stock Purchased</h5>
                                    <div class="table-responsive pb-3">
                                        <table id="datatable-2" class="table table-theme table-row v-middle" data-plugin="dataTable">
                                            <thead>
                                            <tr>
                                                <th><span class="text-muted">ID</span></th>
                                                <th><span class="text-muted">Date</span></th>
                                                <th><span class="text-muted">Type</span></th>
                                                <th><span class="text-muted">Area</span></th>
                                                <th><span class="text-muted">Cost</span></th>
                                            </tr>
                                            </thead>
                                            <tbody></tbody>
                                        </table>
                                    </div>
                                    <h5 class="text-right mt-3">Items: <span id="items-count-2">0</span> <span class="text-muted">/</span> Total Area: <span id="total-area-2">0</span> <span class="text-muted">/</span> Total Sales: <span id="total-sales-2">0</span></h5>
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
    {{--<script type="text/javascript" src="{{ asset('/js/lib/dataTables/jquery.dataTables.min.js') }}"></script>--}}
    {{--<script type="text/javascript" src="{{ asset('/js/lib/dataTables/dataTables.bootstrap4.js') }}"></script>--}}
    {{--<script type="text/javascript" src="{{ asset('/js/lib/dataTables/datatable.js') }}"></script>--}}
    <script>
        let loadClock = 0;
        $(document).ready(function() {
            $('.glass-type-select').on('change', searchStock);
            $('#start-date').on('change', searchStock);
            $('#end-date').on('change', searchStock);

            loadClock = setTimeout(initDataTable, 100);
        });

        function searchStock() {
            if (!$(this).hasClass('selected-type') && $(this).prop('tagName').toLowerCase() === 'select') {
                $('.selected-type').val('').trigger('change').removeClass('selected-type');
                $(this).addClass('selected-type');
            }

            let $typeSelect = $('.selected-type'),
                $startInput = $('#start-date'),
                $endInput = $('#end-date'),
                type = $typeSelect.val(),
                startDate = $startInput.val(),
                endDate = $endInput.val();

            if (startDate === '' || endDate === '' || $typeSelect.length === 0) return;

            let startDateArray = startDate.split('/'),
                endDateArray = endDate.split('/');
            startDate = [startDateArray[1], startDateArray[0], startDateArray[2]].join('/');
            endDate = [endDateArray[1], endDateArray[0], endDateArray[2]].join('/');

            showSpinner();

            $.ajax({
                url: '{{ route('stock.search') }}',
                type: 'POST',
                data: {
                    _token: $('meta[name="csrf-token"]').attr('content'),
                    type: type,
                    start_date: startDate,
                    end_date: endDate,
                },
                success: function(res) {
                    if (!res.success) return;
                    let soldList = res.soldList, purchaseList = res.purchaseList, data = [], areas = 0, totalSales = 0;

                    // First Table
                    $.each(soldList, function(i, item) {
                        data.push([
                            i + 1,
                            formatDate(item.created_at),
                            item.quantity,
                            item.type === 'tool' ? '-' : item.width,
                            item.type === 'tool' ? '-' : item.height,
                            item.type_name,
                            item.type === 'tool' ? '-' : item.arising,
                            item.price,
                            item.payment_method.toUpperCase(),
                        ]);

                        if (item.type === 'glass') {
                            areas += item.quantity * item.width * item.height / Math.pow(10, 6);
                        }

                        totalSales += parseInt(item.price);
                    });

                    $('#items-count-1').text(soldList.length);
                    $('#total-area-1').text(areas);
                    $('#total-sales-1').text(totalSales);

                    $('#datatable-1').DataTable({
                        destroy: true,
                        data: data,
                    });
                    // End First Table

                    // Second Table
                    data = [];
                    areas = 0;
                    totalSales = 0;

                    $.each(purchaseList, function(i, item) {
                        data.push([
                            i + 1,
                            formatDate(item.created_at),
                            item.type_name,
                            item.quantity * item.width * item.height / Math.pow(10, 6),
                            item.cost,
                        ]);

                        if (item.type === 'glass') {
                            areas += item.quantity * item.width * item.height / Math.pow(10, 6);
                        }

                        totalSales += parseInt(item.cost);
                    });

                    $('#items-count-2').text(purchaseList.length);
                    $('#total-area-2').text(areas);
                    $('#total-sales-2').text(totalSales);

                    $('#datatable-2').DataTable({
                        destroy: true,
                        data: data,
                    });
                    // End Second Table
                },
                complete: hideSpinner
            });
        }

        function initDataTable() {
            if (jQuery.fn.DataTable && jQuery.fn.DataTable.ext.renderer.pageButton.bootstrap) {
                $('#datatable-1').DataTable();
                $('#datatable-2').DataTable();
            } else {
                loadClock = setTimeout(initDataTable, 100);
            }
        }

        function formatDate(date) {
            var d = new Date(date),
                month = '' + (d.getMonth() + 1),
                day = '' + d.getDate(),
                year = d.getFullYear();

            if (month.length < 2) month = '0' + month;
            if (day.length < 2) day = '0' + day;

            return [day, month, year].join('/');
        }
    </script>
@endsection