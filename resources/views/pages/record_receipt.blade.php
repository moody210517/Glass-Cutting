@extends('layouts.basic')

@section('title')Record Receipt @endsection

@section('content')
    <div class="d-flex flex-column flex">
        <div id="content-body">
            <div class="p-3 p-md-5">
                <div class="card p-0 col-lg-10 offset-lg-1">
                    <div class="row no-gutters">
                        <div class="col-md-12">
                            <div class="p-4">
                                <h1 class="card-title text-center">{{ strtoupper(__('Glass Baron')) }}</h1>
                                <h5 class="mb-4 text-center">{{ __('Record Receipt') }}</h5>

                                <div id="input-panel" class="my-5">
                                    <div class="form-group row">
                                        <div class="col-md-3 text-right">
                                            <label for="baron-name">Baron Name: </label>
                                        </div>
                                        <div class="col-md-3">
                                            <select class="form-control" id="baron-name" data-plugin="select2" data-option="{}">
                                                @foreach ($barons as $baron)
                                                    <option value="{{ $baron->id }}">{{ $baron->name }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <div class="col-md-3 text-right">
                                            <label for="cash-input">Cash Sales: </label>
                                        </div>
                                        <div class="col-md-3">
                                            <input type="number" class="form-control" id="cash-input" min="0"/>
                                        </div>
                                    </div>
                                    <div class="form-group row text-right">
                                        <div class="col-md-3">
                                            <label for="credit-input">Credit Card Sales: </label>
                                        </div>
                                        <div class="col-md-3">
                                            <input type="number" class="form-control" id="credit-input" min="0"/>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <div class="col-md-6 text-center">
                                            <button class="btn btn-success" id="save-btn">Save</button>
                                        </div>
                                    </div>
                                    <div class="row" id="alert-panel" style="display: none;">
                                        <div class="col-md-6">
                                            <div class="alert bg-primary" role="alert">
                                                Saved successfully!
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div id="search-panel">
                                    <div class="row">
                                        <div class="col-md-3">
                                            <select class="form-control" id="baron-name-2" data-plugin="select2" data-option="{}" data-placeholder="Location">
                                                <option></option>
                                                <option value="all">Total</option>
                                                @foreach ($barons as $baron)
                                                    <option value="{{ $baron->id }}">{{ $baron->name }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                        <div class="col-md-6">
                                            <div class='input-group input-daterange mb-3' data-plugin="datepicker" data-option="{format: 'dd/mm/yyyy'}">
                                                <input type='text' class="form-control" id="start-date">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text">to</span>
                                                </div>
                                                <input type='text' class="form-control" id="end-date">
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <select class="form-control" id="payment-type" data-plugin="select2" data-option="{}" data-placeholder="Sales Information">
                                                <option></option>
                                                <option value="cash">Cash</option>
                                                <option value="eft">EFT</option>
                                                <option value="credit">Credit Card</option>
                                                <option value="manager-cash">Manager Recorded Cash</option>
                                                <option value="manager-credit">Manager Recorded Credit</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>

                                <div id="list" class="b-t py-3">
                                    <div class="table-responsive pb-3">
                                        <table id="datatable" class="table table-theme table-row v-middle" data-plugin="dataTable">
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
                                </div>
                                <h1 class="text-muted p-3 text-right">Total: <span id="total-price">0</span></h1>
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
            $('#cash-input').on('keyup', function() {
                $(this).removeClass('is-invalid');
            });

            $('#credit-input').on('keyup', function() {
                $(this).removeClass('is-invalid');
            });

            $('#save-btn').on('click', function() {
                let $cashInput = $('#cash-input'), $creditInput = $('#credit-input'), isValid = true;
                if ($cashInput.val() === '') {
                    $cashInput.addClass('is-invalid');
                    isValid = false;
                }

                if ($creditInput.val() === '') {
                    $creditInput.addClass('is-invalid');
                    isValid = false;
                }

                if (!isValid) return;

                showSpinner();

                $.ajax({
                    url: '{{ route('receipt.save') }}',
                    type: 'POST',
                    data: {
                        _token: $('meta[name="csrf-token"]').attr('content'),
                        baron_id: $('#baron-name').val(),
                        cash: $cashInput.val(),
                        credit: $creditInput.val(),
                    },
                    success: function() {
                        $('#alert-panel').fadeIn();

                        $('#cash-input').val('');
                        $('#credit-input').val('');
                        setTimeout(function() {
                            $('#alert-panel').fadeOut();
                        }, 3000);
                    },
                    complete: hideSpinner
                });
            });

            $('#baron-name-2').on('change', searchOrders);
            $('#start-date').on('change', searchOrders);
            $('#end-date').on('change', searchOrders);
            $('#payment-type').on('change', searchOrders);
        });

        function searchOrders() {
            let $baronSelect = $('#baron-name-2'),
                $startInput = $('#start-date'),
                $endInput = $('#end-date'),
                $paymentSelect = $('#payment-type'),
                baronId = $baronSelect.val(),
                startDate = $startInput.val(),
                endDate = $endInput.val(),
                payment = $paymentSelect.val();

            if (baronId === '' || startDate === '' || endDate === '' || payment === '') return;

            let startDateArray = startDate.split('/'),
                endDateArray = endDate.split('/');
            startDate = [startDateArray[1], startDateArray[0], startDateArray[2]].join('/');
            endDate = [endDateArray[1], endDateArray[0], endDateArray[2]].join('/');

            showSpinner();

            $.ajax({
                url: '{{ route('order.search') }}',
                type: 'POST',
                data: {
                    _token: $('meta[name="csrf-token"]').attr('content'),
                    baron_id: baronId,
                    start_date: startDate,
                    end_date: endDate,
                    payment: payment,
                },
                success: function(res) {
                    if (!res.success) return;
                    let newList = res.list, data = [], totalPrice = 0;

                    $.each(newList, function(i, item) {
                        data.push([
                            parseInt(i) + 1,
                            formatDate(item.created_at),
                            item.quantity,
                            item.type === 'glass' ? item.width : '-',
                            item.type === 'glass' ? item.height : '-',
                            item.type_name,
                            item.type === 'glass' ? item.arising : '-',
                            item.price,
                            item.payment_method.toUpperCase(),
                        ]);
                        totalPrice += parseFloat(item.price);
                    });

                    $('#datatable').DataTable({
                        destroy: true,
                        data: data,
                    });

                    $('#total-price').text(totalPrice);
                },
                complete: hideSpinner
            });
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