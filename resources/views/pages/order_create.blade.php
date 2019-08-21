@extends('layouts.basic')

@section('title')Create Order @endsection

@section('styles')
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
@endsection

@section('content')
    <div class="d-flex flex-column flex">
        <div id="content-body">
            <div class="p-3 p-md-5 hide-print">
                <div class="card p-0 col-lg-10 offset-lg-1" id="glass-type-panel">
                    <div class="row no-gutters">
                        <div class="col-md-12">
                            <div class="p-4">
                                <h1 class="card-title text-center">{{ strtoupper(__('Glass Baron')) }}</h1>
                                <h5 class="mb-4 text-center">{{ __('Create Order') }}</h5>
                                <h5 class="mb-4">{{ __('Type of glass:') }}</h5>
                                <div class="row">
                                    <div class="col-md-3 mb-2">
                                        <select class="form-control glass-type-select" id="category-1" data-category="1" data-plugin="select2" data-option="{}" data-placeholder="Clear Monolithic">
                                            <option></option>
                                            @foreach ($glassTypes as $type)
                                                @if ($type->category == 'Clear Monolithic')
                                                    <option value="{{ $type->id }}" data-price="{{ $type->price }}">{{$type->name}}</option>
                                                @endif
                                            @endforeach
                                        </select>
                                    </div>
                                    <div class="col-md-3 mb-2">
                                        <select class="form-control glass-type-select" id="category-2" data-category="2" data-plugin="select2" data-option="{}" data-placeholder="Clear Laminated">
                                            <option></option>
                                            @foreach ($glassTypes as $type)
                                                @if ($type->category == 'Clear Laminated')
                                                    <option value="{{ $type->id }}" data-price="{{ $type->price }}">{{$type->name}}</option>
                                                @endif
                                            @endforeach
                                        </select>
                                    </div>
                                    <div class="col-md-2 mb-2">
                                        <select class="form-control glass-type-select" id="category-3" data-category="3" data-plugin="select2" data-option="{}" data-placeholder="Obscure">
                                            <option></option>
                                            @foreach ($glassTypes as $type)
                                                @if ($type->category == 'Obscure')
                                                    <option value="{{ $type->id }}" data-price="{{ $type->price }}">{{$type->name}}</option>
                                                @endif
                                            @endforeach
                                        </select>
                                    </div>
                                    <div class="col-md-2 mb-2">
                                        <select class="form-control glass-type-select" id="category-4" data-category="4" data-plugin="select2" data-option="{}" data-placeholder="Tinted">
                                            <option></option>
                                            @foreach ($glassTypes as $type)
                                                @if ($type->category == 'Tinted')
                                                    <option value="{{ $type->id }}" data-price="{{ $type->price }}">{{$type->name}}</option>
                                                @endif
                                            @endforeach
                                        </select>
                                    </div>
                                    <div class="col-md-2 mb-2">
                                        <select class="form-control glass-tool-select" data-plugin="select2" data-option="{}" data-placeholder="Miscellaneous">
                                            <option></option>
                                            @foreach ($glassTypes as $type)
                                                @if ($type->category == 'Miscellaneous')
                                                    <option value="{{ $type->id }}" data-price="{{ $type->price }}">{{$type->name}}</option>
                                                @endif
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="card p-0 col-lg-10 offset-lg-1" id="detail-panel" style="display: none;">
                    <div class="row no-gutters">
                        <div class="col-md-12">
                            <div class="p-4">
                                <div class="row mt-5 mb-3">
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
                                        <label for="arising">Arising: </label>
                                    </div>
                                    <div class="col-md-3">
                                        <select class="form-control" id="arising" data-plugin="select2" data-option="{}" data-minimum-results-for-search="Infinity" data-fee="{{ $price['arisingPerM'] }}" required>
                                            <option value="no">No</option>
                                            <option value="yes">Yes</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="row form-group">
                                    <div class="col-md-3">
                                        <label for="hard-arising">Hard Arising:</label>
                                    </div>
                                    <div class="col-md-3">
                                        <select class="form-control" id="hard-arising" data-plugin="select2" data-option="{}" data-minimum-results-for-search="Infinity" data-fee="{{ $price['hArisingPerM'] }}" required>
                                            <option value="no">No</option>
                                            <option value="yes">Yes</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="row form-group">
                                    <div class="col-md-3">
                                        <label for="drilling-hole">Drilling Holes: </label>
                                    </div>
                                    <div class="col-md-3">
                                        <input type="number" class="form-control" id="drilling-hole" min="0" data-fee="{{ $price['drillingPerHole'] }}" required/>
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
                                    <button class="btn btn-white" id="add-to-basket-btn">Add to Basket</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="card p-0 col-lg-10 offset-lg-1" id="payment-panel" style="display: none;">
                    <div class="row no-gutters">
                        <div class="col-md-12">
                            <div class="p-4">
                                <div id="basket-list" class="list list-row block animates animates-fadeInRight"></div>
                                <div class="py-2 b-t text-center">
                                    <h4>Delivery: <span id="delivery-fee-label">0</span> (<span id="delivery-distance-label">0</span> Km)</h4>
                                    <h3>Total: <span id="total-price">0</span> / Count: <span id="total-count">0</span></h3>
                                </div>

                                <div class="row mb-5">
                                    <div class="col-lg-3 col-md-4">
                                        <button class="btn btn-danger btn-block" id="remove-item-from-basket-btn">Remove from Basket</button>
                                    </div>
                                    <div class="col-lg-3 col-md-4">
                                        <button class="btn btn-primary btn-block" id="print-btn">Print</button>
                                    </div>
                                </div>

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
                                    <div class="col-lg-3 col-md-4 offset-lg-3 offset-md-2">
                                        <button class="btn btn-danger btn-block" id="clear-basket-btn">Clear All</button>
                                    </div>
                                    <div class="col-lg-3 col-md-4">
                                        <button class="btn btn-success btn-block" id="create-order-btn">Payment Successful</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
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
                        <div class="col-12">
                            <h1 class="text-center font-weight-bold" id="print-title">Quotation</h1>
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
                            <h4 id="order_no">Order no</h4>
                            <h4 id="basket-id"></h4>
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
        </div>
    </div>
@endsection

@section('scripts')
    <script>
        let basketId = '';

        $(document).ready(function() {
            let today = new Date();
            let monthNames = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];
            let date = today.getUTCDate();
            $('#current-date').text( (date.length === 1 ? '0' + date : date) + ' ' + monthNames[today.getUTCMonth()] + ' ' + today.getFullYear());

            $('#detail-panel').find('select').on('change', function() {
                $(this).next().removeClass('is-invalid');
            });

            $('#detail-panel').find('input').on('keyup', function() {
                if ($(this).val() === '') {
                    $(this).addClass('is-invalid');
                } else {
                    $(this).removeClass('is-invalid');
                }
            });

            $('.glass-type-select').on("change", function() {
                let val = $(this).val();
                if (val !== '') {
                    let that = this;
                    let $detailPanel = $('#detail-panel');
                    $detailPanel.find('input').val('');
                    $('#drilling-hole').val(0);
                    $detailPanel.show();
                    $.each($('.glass-type-select').removeClass('triggered'), function(i, select) {
                        if (select === that) {
                            $(select).addClass('triggered');
                        } else {
                            $(select).val('').trigger('change');
                        }
                    });
                }
            });

            $('.glass-tool-select').on('change', function() {
                if ($(this).val() === '') return;

                let $tag = $(this).find('option:selected'),
                    item = {
                        type: 'tool',
                        type_id: $tag.attr('value'),
                        type_name: $tag.text(),
                        type_price: $tag.data('price'),
                        quantity: 1,
                        price: $tag.data('price'),
                    };

                $(this).val('').trigger('change');

                addItemToBasket(item);
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

            $('#add-to-basket-btn').on('click', function() {
                let $typePanel = $('#glass-type-panel'),
                    $widthInput = $('#width'),
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
                    let $triggeredSelect = $typePanel.find('.triggered');
                    let item = {
                        'type': 'glass',
                        'type_id': $triggeredSelect.val(),
                        'type_name': $triggeredSelect.find('option:selected').text(),
                        'category': $triggeredSelect.data('category'),
                        'category_name': $triggeredSelect.data('placeholder'),
                        'width': parseFloat($widthInput.val()),
                        'height': parseFloat($heightInput.val()),
                        'quantity': parseInt($quantityInput.val()),
                        'arising': $arisingSelect.val(),
                        'arising_fee': parseFloat($arisingSelect.data('fee')),
                        'hard_arising': $hArisingSelect.val(),
                        'hard_arising_fee': parseFloat($hArisingSelect.data('fee')),
                        'drilling': $drillingHoleInput.val() === '' ? 0 :parseInt($drillingHoleInput.val()),
                        'drilling_fee': parseFloat($drillingHoleInput.data('fee')),
                        'hardening': $hardeningSelect.val(),
                        'hardening_fee': parseFloat($hardeningSelect.data('fee')),
                        'special_cut': $specialCuttingSelect.val(),
                        'type_price': parseFloat($triggeredSelect.find('option:selected').data('price')),
                        'price': 0,
                    };

                    item.price = item.type_price * item.width * item.height * item.quantity / Math.pow(10, 6);
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
                    }

                    addItemToBasket(item);

                    // Init input & select
                    $typePanel.find('select').val('').trigger('change');
                    initDetailPanel();
                }
            });

            $('#remove-item-from-basket-btn').on('click', function() {
                let tags = $('#basket-list').find('input[type="checkbox"]:checked'), tag,
                    basket = localStorage.getItem('basket'),
                    basketList = $.parseJSON(basket), item,
                    idArray = [], id,
                    $totalPriceTag = $('#total-price'),
                    $totalCountTag = $('#total-count'),
                    totalPrice = parseFloat($totalPriceTag.text()),
                    totalCount = parseFloat($totalCountTag.text());

                for (let i = 0; i < tags.length; i ++){
                    tag = tags[i];
                    id = $(tag).attr('value');

                    idArray.push(id);
                    for (let j = basketList.length - 1; j >= 0; j --) {
                        item = basketList[j];

                        if (item.id === id) {
                            basketList.splice(j, 1);
                            totalPrice -= item.price;
                            totalCount --;
                        }
                    }
                    localStorage.setItem('basket', JSON.stringify(basketList));

                    $(tag).parents('.list-item').fadeOut(function() {
                        let that = this;
                        setTimeout(function() {
                            $(that).remove();
                        }, 500);
                    });
                }

                if (basketList.length === 0) {
                    initBasket();
                } else {
                    $totalPriceTag.text(totalPrice);
                    $totalCountTag.text(totalCount);
                }

                if (basketId !== '') {
                    saveBasket();
                }
            });

            $('#clear-basket-btn').on('click', function() {
                initBasket();
                document.location.href = '{{ route(config('action.info-order')) }}'
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

                let basket = localStorage.getItem('basket'),
                    basketList = $.parseJSON(basket),
                    totalPrice = delivery_fee;

                $.each(basketList, function(i, item) {
                    totalPrice += item.price;
                });

                $('#total-price').text(totalPrice);
            });

            $('#create-order-btn').on('click', function() {
                getUID('invoice');
            });

            $('#print-btn').on('click', function() {
                getUID('quote');
            });

            localStorage.setItem('basket', '[]');
        });

        /**
         * Add item to current basket panel
         * @param item
         */
        function addItemToBasket(item) {
            $('#payment-panel').show();

            // Save item to Browser's localStorage
            let basket = localStorage.getItem('basket'), basketList, totalPrice = 0;
            if ($('#delivery').val() === 'yes') {
                totalPrice = $('#delivery-distance').val() * $('#delivery-distance').data('fee');
            }
            if (basket) {
                basketList = $.parseJSON(basket);
            } else {
                basketList = [];
            }
            item.id = randHex(12);
            basketList.push(item);
            localStorage.setItem('basket', JSON.stringify(basketList));
            // End Save item to Browser's localStorage

            $.each(basketList, function(i, item) {
                totalPrice += item.price;
            });
            $('#total-price').html(totalPrice);
            $('#total-count').html(basketList.length);

            let $itemTag = $('<div></div>', {
                class: 'list-item',
            }).append(
                $('<div></div>', {

                }).append(
                    $('<label></label>', {
                        class: 'ui-check m-0',
                    }).append(
                        $('<input/>', {
                            type: 'checkbox',
                            class: 'basket-checkbox',
                            value: item.id,
                        })
                    ).append(
                        $('<i></i>')
                    )
                )
            ).appendTo('#basket-list');

            if (item.type === 'tool') {
                $itemTag.append(
                    $('<div></div>', {
                        class: 'flex',
                    }).append(
                        $('<div></div>', {
                            class: 'item-feed h-2x',
                            text: 'Type: ' + item.type_name + ' - Quantity: ' + item.quantity + ' - Price: ' + item.price,
                        })
                    )
                );
            } else {
                $itemTag.append(
                    $('<div></div>', {
                        class: 'flex',
                    }).append(
                        $('<div></div>', {
                            class: 'item-feed h-2x',
                            text: item.type_name +
                                ' Width: ' + item.width +
                                ' Height: ' + item.height +
                                ' Quantity: ' + item.quantity +
                                ' Arising: ' + item.arising + (item.arising === 'yes' ? ' (R ' + item.arising_fee * 2 * (item.width + item.height) * item.quantity / Math.pow(10, 3) + ')' : '') +
                                ' Hard Arising: ' + item.hard_arising + (item.hard_arising === 'yes' ? ' (R ' + item.hard_arising_fee * 2 * (item.width + item.height) * item.quantity / Math.pow(10, 3) + ')' : '') +
                                ' Drilling: ' + item.drilling + (item.drilling > 0 ? ' (R ' + item.drilling_fee * item.quantity * item.drilling + ')' : '') +
                                ' Hardening: ' + item.hardening + (item.hardening === 'yes' ? ' (R ' + item.hardening_fee * item.width * item.height * item.quantity / Math.pow(10, 6) + ')' : '') +
                                ' Special Cutting: ' + (item.special_cut === 'yes' ? ' (R ' + item.special_cut_amount * item.quantity + ')' : '') +
                                ' Price: ' + item.price,
                        })
                    )
                );
            }

            if (basketId !== '') {
                saveBasket();
            }
        }

        function initDetailPanel() {
            let $detailPanel = $('#detail-panel');
            $detailPanel.find('input').val('');
            $('#arising').val('no').trigger('change');
            $('#hard-arising').val('no').trigger('change');
            $('#hardening').val('no').trigger('change');
            $('#special-cutting').val('no').trigger('change');
            $('.special-cutting-additional').hide();
            $detailPanel.hide();
        }

        function initBasket() {
            localStorage.setItem('basket', '[]');
            $('#total-price').text(0);
            $('#total-count').text(0);
            $('#basket-list').html('');
            $('#detail-panel').hide();
            $('#payment-panel').hide();
            $('#delivery').val('').trigger('change');
            $('#delivery-distance').val(0);
            $('#delivery-fee-label').text(0);
            $('#delivery-distance-label').text(0);

            basketId = '';
        }

        function saveBasket() {
            $.ajax({
                url: '{{ route('basket.save') }}',
                type: 'POST',
                data: {
                    _token: $('meta[name="csrf-token"]').attr('content'),
                    uid: basketId,
                    data: localStorage.getItem('basket'),
                },
                success: function(res) {
                    if (!res.success) {
                        document.location.href = '/';
                    }
                }
            });
        }

        function saveOrder() {
            let basket = localStorage.getItem('basket'),
                items = $.parseJSON(basket);

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
                    initBasket();
                }
            });
        }

        function printList(type) {
            let basket = localStorage.getItem('basket'),
                basketList = $.parseJSON(basket),
                $tbody = $('#order-table').find('tbody'),
                totalPrice = 0;

            if (basketList.length === 0) return;

            if(type == "quote"){
                $('#basket-id').text(basketId);
                //$('#order_no').text("");
              document.getElementById('basket-id').style.display = "none";
              document.getElementById('order_no').style.display = "none";

            }else{
                $('#basket-id').text(basketId);    
            }
            

            if (type === 'quote') {
                $('#print-title').text('Quotation');
                saveBasket();
            } else {
                $('#print-title').text('Invoice');
                saveOrder();
            }

            $tbody.html('');

            $.each(basketList, function(i, item) {
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

            for (let i = basketList.length; i < 14; i ++) {
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
            if (type === 'invoice') {
                setTimeout(function() {
                    document.location.href = '{{ route(config('action.info-order')) }}';
                }, 100);
            }
        }

        function randHex(len) {
            let maxlen = 8,
                min = Math.pow(16, Math.min(len,maxlen) - 1),
                max = Math.pow(16, Math.min(len,maxlen)) - 1,
                n   = Math.floor( Math.random() * (max - min + 1) ) + min,
                r   = n.toString(16);
            while ( r.length < len ) {
                r = r + randHex( len - maxlen );
            }
            return r;
        }

        function getUID(type) {
            if (basketId !== '') {
                printList(type);
                return;
            }

            $.ajax({
                url: '{{ route('order.uid.get') }}',
                type: 'POST',
                data: {
                    _token: $('meta[name="csrf-token"]').attr('content'),
                },
                success: function(res) {
                    basketId = res;
                },
                complete: function() {
                    printList(type);
                }
            });
        }
    </script>
@endsection