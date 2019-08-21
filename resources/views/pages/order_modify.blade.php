@extends('layouts.basic')

@section('title')Modify Order @endsection

@section('content')
    <div class="d-flex flex-column flex">
        <div id="content-body">
            <div class="p-3 p-md-5">
                <div class="card p-0 col-12 hide-print">
                    <div class="position-absolute px-3 py-2" style="z-index: 10;">
                        <a class="i-con-h-a" href="{{ route(config('action.modify-order')) }}"><i class="mr-2 i-con i-con-arrow-left"><i></i></i>Back</a>
                    </div>
                    <div class="row no-gutters">
                        <div class="col-md-12">
                            <div class="p-4">
                                <h1 class="card-title text-center mb-3">{{ strtoupper(__('Glass Baron')) }}</h1>
                                <h5 class="mb-4 text-center">{{ __('Modify Order') }}</h5>

                                <div class="padding">
                                    <div class="table-responsive pb-3">
                                        <table id="basket-list" class="table table-theme table-row v-middle">
                                            <thead>
                                            <tr>
                                                <th><span class="text-muted">No.</span></th>
                                                <th><span class="text-muted">Name</span></th>
                                                <th><span class="text-muted">Quantity</span></th>
                                                <th><span class="text-muted">Width</span></th>
                                                <th><span class="text-muted">Height</span></th>
                                                <th><span class="text-muted">Arising</span></th>
                                                <th><span class="text-muted">Hard Arising</span></th>
                                                <th><span class="text-muted">Holes</span></th>
                                                <th><span class="text-muted">Hardening</span></th>
                                                <th><span class="text-muted">Special Cutting</span></th>
                                                <th><span class="text-muted">Price</span></th>
                                                <th></th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            @php $id = 1; $totalPrice = 0; $count = 0; @endphp
                                            @foreach($items as $item)
                                                <tr data-id="{{ $id }}" data-json='@json($item)'>
                                                    
                                                    <td>
                                                        <small class="text-muted">{{ $id }}</small>
                                                    </td>
                                                    
                                                    
                                                    <td class="flex">{{ $item->type_name."xxx" }}</td>
                                                    
                                                    
                                                    
                                                    <td>{{ $item->quantity }}</td>
                                                    <td>
                                                        @if ($item->type == 'glass')
                                                            {{ $item->width }}
                                                        @else
                                                            -
                                                        @endif
                                                    </td>
                                                    <td>
                                                        @if ($item->type == 'glass')
                                                            {{ $item->height }}
                                                        @else
                                                            -
                                                        @endif
                                                    </td>
                                                    <td>
                                                        @if ($item->type == 'glass')
                                                            {{ $item->arising . ($item->arising == 'yes' ? ' (R ' . ($item->arising_fee * $item->quantity * 2 * ($item->width + $item->height) / 1000) . ')' : '') }}
                                                        @else
                                                            -
                                                        @endif
                                                    </td>
                                                    <td>
                                                        @if ($item->type == 'glass')
                                                            {{ $item->hard_arising . ($item->hard_arising == 'yes' ? ' (R ' . ($item->hard_arising_fee * $item->quantity * 2 * ($item->width + $item->height) / 1000) . ')' : '') }}
                                                        @else
                                                            -
                                                        @endif
                                                    </td>
                                                    <td>
                                                        @if ($item->type == 'glass')
                                                            {{ $item->drilling . ($item->drilling > 0 ? ' (R ' . ($item->drilling_fee * $item->quantity * $item->drilling) . ')' : '') }}
                                                        @else
                                                            -
                                                        @endif
                                                    </td>
                                                    <td>
                                                        @if ($item->type == 'glass')
                                                            {{ $item->hardening . ($item->hardening == 'yes' ? ' (R ' . ($item->hardening_fee * $item->quantity * $item->width * $item->height / 1000000) . ')' : '') }}
                                                        @else
                                                            -
                                                        @endif
                                                    </td>
                                                    <td>
                                                        @if ($item->type == 'glass')
                                                            {{ $item->special_cut . ($item->special_cut == 'yes' ? ' (R ' . ($item->quantity * $item->special_cut_amount) . ')' : '') }}
                                                        @else
                                                            -
                                                        @endif
                                                    </td>
                                                    <td>
                                                        {{ 'R ' . $item->price }}
                                                    </td>
                                                    <td>
                                                        @if (!isset($item->status) || $item->status == 'delivered')
                                                            <button class="btn btn-raised btn-wave btn-icon btn-rounded i-con-h-a btn-danger delete-btn"><i class="i-con i-con-trash"><i></i></i></i> </button>
                                                            @if ($item->type == 'glass')
                                                                <button class="btn btn-raised btn-wave btn-icon btn-rounded i-con-h-a btn-warning edit-btn"><i class="i-con i-con-edit"><i></i></i></i> </button>
                                                            @endif
                                                        @endif
                                                    </td>
                                                </tr>
                                                @php $id ++; $totalPrice += $item->price; $count ++; @endphp
                                            @endforeach
                                            <?php
                                            if (isset($order) && $order->delivery == 'yes') {
                                                $delivery = true;
                                                $delivery_fee = $order->delivery_fee * $order->delivery_distance;
                                                $totalPrice += $delivery_fee;
                                            }
                                            ?>
                                            </tbody>
                                        </table>
                                    </div>
                                    <div>
                                        @if (isset($delivery))
                                            <h4 class="text-muted text-right">Delivery: <span id="delivery-fee-label">{{ $delivery_fee }}</span> (<span id="delivery-distance-label">{{ $order->delivery_distance }}</span> Km)</h4>
                                        @else
                                            <h4 class="text-muted text-right">Delivery: <span id="delivery-fee-label">0</span> (<span id="delivery-distance-label">0</span> Km)</h4>
                                        @endif
                                        <h3 class="text-muted text-right">Total: <span id="total-price">{{ $totalPrice }}</span> / Count: <span id="total-count">{{ $count }}</span></h3>
                                    </div>
                                </div>

                                <div id="detail-panel" class="b-t pt-5 pb-3" style="display: none;">
                                    <div class="row">
                                        <div class="col-md-2">
                                            <label>Glass Dimensions</label>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="row form-group">
                                                <div class="col-md-4">
                                                    <label for="width">Width (mm): </label>
                                                </div>
                                                <div class="col-md-8">
                                                    <input type="number" class="form-control" id="width" min="1" step="1" oninput="this.value=this.value.replace(/[^0-9]/g,'');"/>
                                                </div>
                                            </div>
                                            <div class="row form-group">
                                                <div class="col-md-4">
                                                    <label for="height">Height (mm): </label>
                                                </div>
                                                <div class="col-md-8">
                                                    <input type="number" class="form-control" id="height" min="1" step="1" oninput="this.value=this.value.replace(/[^0-9]/g,'');"/>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col-md-3">
                                            <label for="quantity">Quantity: </label>
                                        </div>
                                        <div class="col-md-3">
                                            <input type="number" class="form-control" id="quantity" min="1" step="1" oninput="this.value=this.value.replace(/[^0-9]/g,'');"/>
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col-md-3">
                                            <label>Arising: </label>
                                        </div>
                                        <div class="col-md-3">
                                            <select class="form-control" id="arising" data-plugin="select2" data-option="{}" data-minimum-results-for-search="Infinity" data-placeholder="Select" data-fee="{{ $price['arisingPerM'] }}" required>
                                                <option></option>
                                                <option value="yes">Yes</option>
                                                <option value="no">No</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col-md-3">
                                            <label for="hard-arising">Hard Arising:</label>
                                        </div>
                                        <div class="col-md-3">
                                            <select class="form-control" id="hard-arising" data-plugin="select2" data-option="{}" data-minimum-results-for-search="Infinity" data-placeholder="Select" data-fee="{{ $price['hArisingPerM'] }}" required>
                                                <option></option>
                                                <option value="yes">Yes</option>
                                                <option value="no">No</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col-md-3">
                                            <label for="drilling-hole">Drilling Holes: </label>
                                        </div>
                                        <div class="col-md-3">
                                            <input type="number" class="form-control" id="drilling-hole" min="0" value="0" data-fee="{{ $price['drillingPerHole'] }}" required/>
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col-md-3">
                                            <label for="hardening">Hardening: </label>
                                        </div>
                                        <div class="col-md-3">
                                            <select class="form-control" id="hardening" data-plugin="select2" data-option="{}" data-minimum-results-for-search="Infinity" data-fee="{{ $price['hardeningPerM'] }}">
                                                <option value="no">No</option>
                                                <option value="yes">Yes</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col-md-3">
                                            <label for="special-cutting">Special Cutting: </label>
                                        </div>
                                        <div class="col-md-3">
                                            <select class="form-control" id="special-cutting" data-plugin="select2" data-option="{'val': 'option:eq(1)'}" data-minimum-results-for-search="Infinity">
                                                <option value="no">No</option>
                                                <option value="yes">Yes</option>
                                            </select>
                                        </div>
                                        <div class="col-md-2 special-cutting-additional" style="display: none;">
                                            <label for="special-cutting-amount">Amount: </label>
                                        </div>
                                        <div class="col-md-3 special-cutting-additional" style="display: none;">
                                            <input type="number" class="form-control" id="special-cutting-amount"/>
                                        </div>
                                    </div>
                                    <div class="d-flex justify-content-center">
                                        <button class="btn btn-white" id="save-changes-btn">Save Changes</button>
                                    </div>
                                </div>

                                @if ($page_type == 'basket')
                                <div id="payment-panel" class="b-t pt-3 pb-3">
                                    <div class="row form-group" id="baron-div">
                                        <div class="col-md-3">
                                            <label for="delivery">Pick up: </label>
                                        </div>
                                        <div class="col-md-3">
                                            <select class="form-control" id="baron" data-plugin="select2" data-option="{}" data-minimum-results-for-search="Infinity">
                                                @foreach ($barons as $baron)
                                                    <option value="{{ $baron->id }}">{{ $baron->name }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col-md-3">
                                            <label for="delivery">Delivery: </label>
                                        </div>
                                        <div class="col-md-3">
                                            <select class="form-control" id="delivery" data-plugin="select2" data-option="{}" data-minimum-results-for-search="Infinity">
                                                <option value="no">No</option>
                                                <option value="yes">Yes</option>
                                            </select>
                                        </div>
                                        <div class="col-md-2 text-right delivery-additional" style="display: none;">
                                            <label for="delivery-distance">Distance (Km): </label>
                                        </div>
                                        <div class="col-md-3 delivery-additional" style="display: none;">
                                            <input type="number" class="form-control" id="delivery-distance" min="0" data-fee="{{ $price['deliveryPerKm'] }}"/>
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col-md-3">
                                            <label for="payment">Payment method: </label>
                                        </div>
                                        <div class="col-md-3">
                                            <select class="form-control" id="payment" data-plugin="select2" data-option="{}" data-minimum-results-for-search="Infinity">
                                                <option value="cash">Cash</option>
                                                <option value="eft">EFT</option>
                                                <option value="credit">Credit Card</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="row mt-3">
                                        <div class="col-lg-3 col-md-4 offset-lg-3">
                                            <button class="btn btn-success" id="create-order-btn" data-basket="{{ $uid }}">Payment Successful</button>
                                        </div>
                                    </div>
                                </div>
                                @endif
                            </div>
                        </div>
                    </div>
                </div>

                <script>
                    if (window.jQuery) {
                        document.onload = initHandlers();
                    }

                    function initHandlers() {
                        $('select').on('change', function() {
                            $(this).next().removeClass('is-invalid');
                        });

                        $('#arising').on('change', function() {
                            if ($(this).val() === 'yes') {
                                $('#hard-arising').val('no').trigger('change');
                            }
                        });

                        $('#hard-arising').on('change', function() {
                            if ($(this).val() === 'yes') {
                                $('#arising').val('no').trigger('change');
                            }
                        });

                        $('#special-cutting').on('change', function() {
                            if ($(this).val() === 'yes') {
                                $('.special-cutting-additional').show();
                            } else {
                                $('.special-cutting-additional').hide();
                            }
                        });

                        $('#save-changes-btn').on('click', function() {
                            let $widthInput = $('#width'),
                                $heightInput = $('#height'),
                                $quantityInput = $('#quantity'),
                                $arisingSelect = $('#arising'),
                                $hArisingSelect = $('#hard-arising'),
                                $drillingHoleInput = $('#drilling-hole'),
                                $hardeningSelect = $('#hardening'),
                                $specialCuttingSelect = $('#special-cutting'),
                                $specialCuttingInput = $('#special-cutting-amount'),
                                isValid = true,
                                invalidTags = [];

                            if ($widthInput.val() === '') {
                                invalidTags.push($widthInput);
                                isValid = false;
                            } else {
                                $widthInput.removeClass('is-invalid');
                            }
                            if ($heightInput.val() === '') {
                                invalidTags.push($heightInput);
                                isValid = false;
                            } else {
                                $heightInput.removeClass('is-invalid');
                            }
                            if ($quantityInput.val() === '') {
                                invalidTags.push($quantityInput);
                                isValid = false;
                            } else {
                                $quantityInput.removeClass('is-invalid');
                            }
                            if ($arisingSelect.val() === '') {
                                invalidTags.push($arisingSelect);
                                isValid = false;
                            } else {
                                $arisingSelect.next().removeClass('is-invalid');
                            }
                            if ($hArisingSelect.val() === '') {
                                invalidTags.push($hArisingSelect);
                                isValid = false;
                            } else {
                                $hArisingSelect.next().removeClass('is-invalid');
                            }
                            if ($specialCuttingSelect.val() === 'yes' && $specialCuttingInput.val() === '') {
                                invalidTags.push($specialCuttingInput);
                                isValid = false;
                            } else {
                                $specialCuttingInput.removeClass('is-invalid');
                            }

                            if (!isValid) {
                                $.each(invalidTags, function(i, tag) {
                                    if ($(tag).prop('tagName').toLowerCase() === 'input') {
                                        $(tag).addClass('is-invalid');
                                    } else {
                                        $(tag).next().addClass('is-invalid');
                                    }
                                });
                            } else {
                                let $targetRow = $('.target-order'),
                                    item = $targetRow.data('json');

                                item.old_price = item.price;

                                item.width = parseFloat($widthInput.val());
                                item.height = parseFloat($heightInput.val());
                                item.quantity = parseFloat($quantityInput.val());
                                item.arising = $arisingSelect.val();
                                item.arising_fee = parseFloat($arisingSelect.data('fee'));
                                item.hard_arising = $hArisingSelect.val();
                                item.hard_arising_fee = parseFloat($hArisingSelect.data('fee'));
                                item.drilling = $drillingHoleInput.val() === '' ? 0 : parseInt($drillingHoleInput.val());
                                item.drilling_fee = parseFloat($drillingHoleInput.data('fee'));
                                item.hardening = $hardeningSelect.val();
                                item.hardening_fee = parseFloat($hardeningSelect.data('fee'));
                                item.special_cut = $specialCuttingSelect.val();
                                item.price = item.type_price * item.quantity * item.width * item.height / Math.pow(10, 6);

                                if (item.arising === 'yes') {
                                    item.price = item.price + item.arising_fee * 2 * (item.width + item.height) * item.quantity / Math.pow(10, 3);
                                }
                                if (item.hard_arising === 'yes') {
                                    item.price = item.price + item.hard_arising_fee * 2 * (item.width + item.height) * item.quantity / Math.pow(10, 3);
                                }
                                if (item.hardening === 'yes') {
                                    item.price = item.price + item.hardening_fee * item.width * item.height * item.quantity / Math.pow(10, 6);
                                }
                                item.price = item.price + item.drilling_fee * item.drilling * item.quantity;

                                if ($specialCuttingSelect.val() === 'yes') {
                                    item.special_cut_amount = parseFloat($specialCuttingInput.val());
                                    item.price = item.price + item.special_cut_amount * item.quantity;
                                } else {
                                    item.special_cut_amount = 0;
                                }

                                $targetRow.attr('data-json', item);
                                redrawRow($targetRow);

                                // Init detail panel
                                let $detailPanel = $('#detail-panel');
                                $detailPanel.find('input').val('');
                                $('#drilling-hole').val(0);
                                $arisingSelect.val('').trigger('change');
                                $hardeningSelect.val('no').trigger('change');
                                $specialCuttingSelect.val('no').trigger('change');
                                $detailPanel.hide();
                                // End Init detail panel

                                let $priceTag = $('#total-price');
                                $priceTag.text(parseFloat($priceTag.text().trim()) - item.old_price + item.price);

                                @if ($page_type == 'basket')
                                saveBasket();
                                @else
                                saveOrderItem(item);
                                @endif
                            }
                        });

                        $('.edit-btn').on('click', function() {
                            $('.target-order').removeClass('target-order');
                            let item = $(this).parents('tr').addClass('target-order').data('json');

                            $('#width').val(item.width);
                            $('#height').val(item.height);
                            $('#quantity').val(item.quantity);
                            $('#arising').val(item.arising).trigger('change');
                            if (item.arising === 'yes') {
                                $('.arising-extra').show();
                            }
                            $('#hard-arising').val(item.hard_arising).trigger('change');
                            $('#drilling-hole').val(item.drilling);
                            $('#hardening').val(item.hardening).trigger('change');
                            $('#special-cutting').val(item.special_cut).trigger('change');
                            if (item.special_cut === 'yes') {
                                $('#special-cutting-amount').val(item.special_cut_amount);
                                $('.special-cutting-additional').show();
                            } else {
                                $('#special-cutting-amount').val('');
                            }

                            $("html, body").animate({scrollTop: $('#detail-panel').show().offset().top - $('#header').innerHeight()});
                        });

                        $('.delete-btn').on('click', function() {
                            $(this).parents('tr').fadeOut(function() {
                                let item = $(this).data('json'),
                                    $priceTag = $('#total-price'),
                                    $countTag = $('#total-count');
                                $priceTag.text(parseFloat($priceTag.text().trim()) - item.price);
                                $countTag.text(parseInt($countTag.text().trim()) - 1);

                                $(this).remove();

                                @if ($page_type == 'basket')
                                saveBasket();
                                @else
                                deleteOrderItem(item);
                                @endif
                            });
                        });

                        $('#delivery').on('change', function() {
                            $('#delivery-distance').val(0);
                            $('#delivery-distance-label').text(0);
                            $('#delivery-fee-label').text(0);
                            if ($(this).val() === 'yes') {
                                $('.delivery-additional').show();
                                $('#baron-div').hide();
                            } else {
                                $('.delivery-additional').hide();
                                $('#baron-div').show();
                            }
                        });

                        $('#delivery-distance').on('keyup', function() {
                            let distance = $(this).val(),
                                delivery_fee = distance * $(this).data('fee');
                            $('#delivery-distance-label').text(distance);
                            $('#delivery-fee-label').text(delivery_fee);

                            let rows = $('#basket-list').find('tbody').find('tr'), totalPrice = delivery_fee;

                            $.each(rows, function(i, row) {
                                totalPrice += $(row).data('json').price;
                            });

                            $('#total-price').text(totalPrice);
                        });

                        @if ($page_type == 'basket')
                        $('#create-order-btn').on('click', function() {
                            let rows = $('#basket-list').find('tbody').find('tr'),
                                items = [],
                                basketId = $(this).data('basket');

                            $.each(rows, function(i, row) {
                                items.push($(row).data('json'));
                            });

                            $.ajax({
                                url: '{{ route('order.create') }}',
                                type: 'POST',
                                data: {
                                    _token: $('meta[name="csrf-token"]').attr('content'),
                                    uid: basketId,
                                    items: items,
                                    baron: $('#baron').val(),
                                    delivery: $('#delivery').val(),
                                    delivery_fee: $('#delivery-distance').data('fee'),
                                    delivery_distance: $('#delivery-distance').val(),
                                    payment: $('#payment').val(),
                                },
                                success: function() {
                                    localStorage.setItem('basket', '[]');
                                    $('#basket-list').html('');
                                    $('#payment-panel').remove();
                                    printList(items);
                                }
                            });
                        });
                        @endif
                    }

                    function redrawRow($row) {
                        let item = $row.data('json'),
                            tds = $row.find('td');

                        tds[2].innerHTML = item.quantity;
                        tds[3].innerHTML = item.width;
                        tds[4].innerHTML = item.height;
                        tds[5].innerHTML = item.arising + (item.arising === 'yes' ? ' (R ' + item.arising_fee * 2 * (item.width + item.height) * item.quantity / Math.pow(10, 3) + ')' : '');
                        tds[6].innerHTML = item.hard_arising + (item.hard_arising === 'yes' ? ' (R ' + item.hard_arising_fee * 2 * (item.width + item.height) * item.quantity / Math.pow(10, 3) + ')' : '');
                        tds[7].innerHTML = item.drilling + (item.drilling > 0 ? ' (R ' + item.drilling_fee * item.quantity * item.drilling + ')' : '');
                        tds[8].innerHTML = item.hardening + (item.hardening === 'yes' ? ' (R ' + item.hardening_fee * item.width * item.height * item.quantity / Math.pow(10, 6) + ')' : '');
                        tds[9].innerHTML = item.special_cut + (item.special_cut === 'yes' ? ' (R ' + item.special_cut_amount * item.quantity + ')' : '');
                        tds[10].innerHTML = 'R ' + item.price;
                    }

                    @if ($page_type == 'basket')
                    function saveBasket() {
                        let rows = $('#basket-list').find('tbody').find('tr'), items = [], totalPrice = 0, totalCount = 0, item;

                        $.each(rows, function(i, row) {
                            item = $(row).data('json');
                            items.push(item);
                            totalPrice += item.price;
                            totalCount ++;
                        });

                        $('#total-price').text(totalPrice);
                        $('#total-count').text(totalCount);

                        $.ajax({
                            url: '{{ route('basket.save') }}',
                            type: 'POST',
                            data: {
                                _token: $('meta[name="csrf-token"]').attr('content'),
                                uid: $('#create-order-btn').data('basket'),
                                data: JSON.stringify(items),
                            },
                        });
                    }

                    function printList(items) {
                        let $tbody = $('#order-table').find('tbody'),
                            totalPrice = 0;

                        if (items.length === 0) return;

                        $tbody.html('');

                        $.each(items, function(i, item) {
                            $('<tr></tr>').append(
                                $('<td></td>', {
                                    text: item.quantity,
                                })
                            ).append(
                                $('<td></td>', {
                                    text: item.type === 'glass' ? item.width : '',
                                })
                            ).append(
                                $('<td></td>', {
                                    text: item.type === 'glass' ? item.height : '',
                                })
                            ).append(
                                $('<td></td>', {
                                    text: item.type_name,
                                })
                            ).append(
                                $('<td></td>', {
                                    text: 'R ' + item.price,
                                })
                            ).appendTo($tbody);

                            totalPrice += item.price;
                        });

                        if ($('#delivery').val() === 'yes') {
                            let delivery_fee = parseFloat($('#delivery-fee-label').text());
                            totalPrice += delivery_fee;
                            $tbody.append('<tr><td></td><td></td><td></td><td>Delivery</td><td>R ' + delivery_fee + '</td></tr>');
                        }

                        for (let i = items.length; i < 14; i ++) {
                            $tbody.append('<tr><td><span class="hidden">-</span></td><td></td><td></td><td></td><td></td></tr>');
                        }

                        $tbody.append(
                            $('<tr></tr>').append(
                                $('<td></td>')
                            ).append(
                                $('<td></td>')
                            ).append(
                                $('<td></td>')
                            ).append(
                                $('<td></td>', {
                                    text: 'Total Due',
                                    class: 'font-weight-bold',
                                })
                            ).append(
                                $('<td></td>', {
                                    text: totalPrice,
                                    class: 'font-weight-bold',
                                })
                            )
                        );

                        window.print();

                        setTimeout(function() {
                            document.location.href = '{{ route(config('action.modify-order')) }}';
                        }, 100);
                    }
                    @else
                    function saveOrderItem(item) {
                        $.ajax({
                            url: '{{ route('order.update') }}',
                            type: 'POST',
                            data: {
                                _token: $('meta[name="csrf-token"]').attr('content'),
                                data: item,
                            }
                        });
                    }

                    function deleteOrderItem(item) {
                        $.ajax({
                            url: '{{ route('order.item.delete') }}',
                            type: 'POST',
                            data: {
                                _token: $('meta[name="csrf-token"]').attr('content'),
                                data: item,
                            }
                        });
                    }
                    @endif
                </script>
                @if ($page_type == 'basket')
                    <style>
                        .select2.is-invalid.select2-container--default .select2-selection{
                            border: solid 1px #fe4d62!important;
                            -webkit-border-radius: 5px;
                            -moz-border-radius: 5px;
                            border-radius: 5px;
                        }
                        .select2.is-invalid.select2-container--default .select2-selection--single .select2-selection__placeholder {
                            color: red;
                        }
                        @media all {
                            #print{
                                display: none;
                            }
                        }
                        @media print {
                            @page{
                                size: 8.27in 11.69in;
                            }
                            #print {
                                display: block;
                                margin: 0;
                                padding: 0.5in 0.4in 0.5in 0.4in;
                                width: 100%;
                                height: 100%;
                            }
                            #order-table{
                                width: 100%;
                            }
                            #order-table td, #order-table th{
                                border: solid 1px black;
                                text-align: center;
                            }
                            .card-title{
                                font-size: 72px;
                            }
                            .hide-print {
                                display: none;
                            }
                        }
                    </style>

                    <div id="print" class="bg-white text-dark">
                        <h5 class="pb-1"><span class="card-title">GLASS BARON</span> <span class="mr-2" style="font-size: 1.5em;">(Pty) Ltd</span> 2012/176366/07</h5>
                        <h1 class="pb-4" style="font-family: 'Times New Roman';">Discount Glass</h1>
                        <div class="row">
                            <div class="col-1">
                                <h4>Tel</h4>
                            </div>
                            <div class="col-7">
                                <h4>: 012 804 9755</h4>
                            </div>
                            <div class="col-3">
                                <h4>P O BOX 12163</h4>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-1">
                                <h4>Fax</h4>
                            </div>
                            <div class="col-7">
                                <h4>: 086 600 8877</h4>
                            </div>
                            <div class="col-3">
                                <h4>Hatfield</h4>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-1">
                                <h4>Web</h4>
                            </div>
                            <div class="col-7">
                                <h4>: glassbaron.co.za</h4>
                            </div>
                            <div class="col-3">
                                <h4>0028</h4>
                            </div>
                        </div>
                        <div class="row mb-2">
                            <div class="col-1">
                                <h4>Email</h4>
                            </div>
                            <div class="col-7">
                                <h4>: orders@glassbaron.co.za</h4>
                            </div>
                        </div>
                        <div style="font-family: 'Times New Roman';">
                            <div class="row mb-1">
                                <div class="col-3 offset-8">
                                    <h4 id="current-date">18 October 2016</h4>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-5">
                                    <h1 class="text-center font-weight-bold">Invoice</h1>
                                </div>
                            </div>
                            <div class="row mb-2">
                                <div class="col-1">
                                    <h5>Att   :</h5>
                                </div>
                                <div class="col-7 row">
                                    <div class="col-12">
                                        <h4 id="customer-name">{{ $customerInfo['name'] }}</h4>
                                    </div>
                                    <div class="col-12">
                                        <h4 id="customer-address">{{ $customerInfo['physical-address'] }}</h4>
                                    </div>
                                    <div class="col-12">
                                        <h4 id="customer-email">{{ $customerInfo['id-number'] }}</h4>
                                    </div>
                                    <div class="col-12">
                                        <h4 id="customer-phone">{{ $customerInfo['phone-number'] }}</h4>
                                    </div>
                                </div>
                                <div class="col-4 my-auto">
                                    <h4>Order no</h4>
                                    <h4 id="basket-id">{{ $uid }}</h4>
                                </div>
                            </div>
                        </div>
                        <div id="order-detail">
                            <table id="order-table">
                                <thead>
                                <tr>
                                    <th>Qty</th>
                                    <th>Width</th>
                                    <th>Length</th>
                                    <th>Description</th>
                                    <th>Price</th>
                                </tr>
                                </thead>
                                <tbody>
                                </tbody>
                            </table>
                        </div>
                        <div class="row my-2">
                            <div class="col-12">
                                <h4 class="font-weight-bold">Thank you for your enquiry.</h4>
                            </div>
                        </div>
                        <div class="row my-2">
                            <div class="col-12">
                                <h4 class="font-weight-bold">{{ Auth::user()->name }}</h4>
                            </div>
                        </div>
                        <div class="row" style="font-size: 1.5em;">
                            <div class="col-12 row">
                                <div class="col-3">Standard Bank</div>
                            </div>
                            <div class="col-12 row">
                                <div class="col-3">Branch code </div>
                                <div class="col-3">: 012 445</div>
                            </div>
                            <div class="col-12 row">
                                <div class="col-3">Account no </div>
                                <div class="col-3">: 013 335 693</div>
                            </div>
                        </div>
                        <div class="row my-2">
                            <div class="col-12">
                                <h4 class="font-weight-bold">Payment Terms : 100% on Order</h4>
                            </div>
                        </div>
                        <div class="row my-2">
                            <div class="col-12">
                                <h4 class="font-weight-bold text-center">Directors : JH Grobbelaar, CJM Grobbelaar</h4>
                            </div>
                        </div>
                    </div>
                @endif
            </div>
        </div>
    </div>
@endsection

@section('scripts')
    <script>
    $(document).ready(initHandlers);
    </script>
@endsection