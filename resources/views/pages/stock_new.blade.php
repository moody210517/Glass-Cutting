@extends('layouts.basic')

@section('title')New Stock @endsection

@section('content')
    <div class="d-flex flex-column flex">
        <div id="content-body">
            <div class="p-3 p-md-5">
                <div class="card p-0 col-lg-10 offset-lg-1">
                    <div class="row no-gutters">
                        <div class="col-md-12">
                            <div class="p-4">
                                <h1 class="card-title text-center">{{ strtoupper(__('Glass Baron')) }}</h1>
                                <h5 class="mb-4 text-center">{{ __('New Stock') }}</h5>
                                <h5 class="mb-4">{{ __('Type of glass:') }}</h5>

                                {{--<div class="d-flex flex-wrap">
                                    <div class="dropdown m-2">
                                        <button class="btn btn-white dropdown-toggle" data-toggle="dropdown">Clear Monolithic </button>
                                        <div class="dropdown-menu" role="menu">
                                            <a class="dropdown-item">
                                                Action
                                            </a>
                                        </div>
                                    </div>
                                    <div class="dropdown m-2">
                                        <button class="btn btn-white dropdown-toggle" data-toggle="dropdown">Clear Laminated </button>
                                        <div class="dropdown-menu" role="menu">
                                            <a class="dropdown-item">
                                                Action
                                            </a>
                                        </div>
                                    </div>
                                    <div class="dropdown m-2">
                                        <button class="btn btn-white dropdown-toggle" data-toggle="dropdown">Obscure </button>
                                        <div class="dropdown-menu" role="menu">
                                            <a class="dropdown-item">
                                                Action
                                            </a>
                                        </div>
                                    </div>
                                    <div class="dropdown m-2">
                                        <button class="btn btn-white dropdown-toggle" data-toggle="dropdown">Tinted </button>
                                        <div class="dropdown-menu" role="menu">
                                            <a class="dropdown-item">
                                                Action
                                            </a>
                                        </div>
                                    </div>
                                    <div class="dropdown m-2">
                                        <button class="btn btn-white dropdown-toggle" data-toggle="dropdown">Miscellaneous </button>
                                        <div class="dropdown-menu" role="menu">
                                            <a class="dropdown-item">
                                                Action
                                            </a>
                                        </div>
                                    </div>
                                </div>--}}
                                <div class="row">
                                    <div class="col-md-3 mb-2">
                                        <select class="form-control type-glass-select" data-plugin="select2" data-option="{}" data-placeholder="Clear Monolithic">
                                            <option></option>
                                            @foreach ($glassTypes as $type)
                                                @if ($type->category == 'Clear Monolithic')
                                                <option value="{{ $type->id }}">{{$type->name}}</option>
                                                @endif
                                            @endforeach
                                        </select>
                                    </div>
                                    <div class="col-md-3 mb-2">
                                        <select class="form-control type-glass-select" data-plugin="select2" data-option="{}" data-placeholder="Clear Laminated">
                                            <option></option>
                                            @foreach ($glassTypes as $type)
                                                @if ($type->category == 'Clear Laminated')
                                                    <option value="{{ $type->id }}">{{$type->name}}</option>
                                                @endif
                                            @endforeach
                                        </select>
                                    </div>
                                    <div class="col-md-2 mb-2">
                                        <select class="form-control type-glass-select" data-plugin="select2" data-option="{}" data-placeholder="Obscure">
                                            <option></option>
                                            @foreach ($glassTypes as $type)
                                                @if ($type->category == 'Obscure')
                                                    <option value="{{ $type->id }}">{{$type->name}}</option>
                                                @endif
                                            @endforeach
                                        </select>
                                    </div>
                                    <div class="col-md-2 mb-2">
                                        <select class="form-control type-glass-select" data-plugin="select2" data-option="{}" data-placeholder="Tinted">
                                            <option></option>
                                            @foreach ($glassTypes as $type)
                                                @if ($type->category == 'Tinted')
                                                    <option value="{{ $type->id }}">{{$type->name}}</option>
                                                @endif
                                            @endforeach
                                        </select>
                                    </div>
                                    <div class="col-md-2 mb-2">
                                        <select class="form-control type-tool-select" data-plugin="select2" data-option="{}" data-placeholder="Miscellaneous">
                                            <option></option>
                                            @foreach ($glassTypes as $type)
                                                @if ($type->category == 'Miscellaneous')
                                                    <option value="{{ $type->id }}">{{$type->name}}</option>
                                                @endif
                                            @endforeach
                                        </select>
                                    </div>
                                </div>

                                <div id="detail-panel" class="mt-4" style="display: none;">
                                    <div class="form-group row type-glass-property">
                                        <label class="col-sm-2 col-form-label" for="width">Width: </label>
                                        <div class="col-sm-4">
                                            <input type="number" class="form-control" id="width" min="1">
                                        </div>
                                    </div>
                                    <div class="form-group row type-glass-property">
                                        <label class="col-sm-2 col-form-label" for="height">Height: </label>
                                        <div class="col-sm-4">
                                            <input type="number" class="form-control" id="height" min="1">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-2 col-form-label" for="quantity">Quantity: </label>
                                        <div class="col-sm-4">
                                            <input type="number" class="form-control" id="quantity" min="1">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-2 col-form-label" for="cost">Cost: </label>
                                        <div class="col-sm-4">
                                            <input type="number" class="form-control" id="cost" min="1">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <div class="col-sm-6 text-right">
                                            <button class="btn btn-success" onclick="addStock();">Add to Stock Purchased</button>
                                        </div>
                                    </div>
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
        let type = '';

        $(document).ready(function() {
            $('select').on("change", function() {
                let val = $(this).val();
                if (val !== '') {
                    if ($(this).hasClass('type-glass-select')) {
                        type = 'glass';

                        $('.type-glass-property').show();
                    } else {
                        type = 'tool';

                        $('.type-glass-property').hide();
                    }

                    let that = this;
                    let $detailPanel = $('#detail-panel');
                    $detailPanel.find('input').val('');
                    $detailPanel.show();
                    $.each($('select').removeClass('triggered'), function(i, select) {
                        if (select === that) {
                            $(select).addClass('triggered');
                        } else {
                            $(select).val('').trigger('change');
                        }
                    });
                }
            });

            $('input').on('keyup', function() {
                if ($(this).val() === '') {
                    $(this).addClass('is-invalid');
                } else {
                    $(this).removeClass('is-invalid');
                }
            });
        });

        function addStock() {
            let $typeSelect = $('select.triggered'),
                $widthInput = $('#width'),
                $heightInput = $('#height'),
                $quantityInput = $('#quantity'),
                $costInput = $('#cost'),
                isValid = true,
                invalidTags = [];

            if (type === 'glass' && $widthInput.val() === '') {
                invalidTags.push($widthInput);
                isValid = false;
            } else {
                $widthInput.removeClass('is-invalid')
            }
            if (type === 'glass' && $heightInput.val() === '') {
                invalidTags.push($heightInput);
                isValid = false;
            } else {
                $heightInput.removeClass('is-invalid')
            }
            if ($quantityInput.val() === '') {
                invalidTags.push($quantityInput);
                isValid = false;
            } else {
                $quantityInput.removeClass('is-invalid')
            }
            if ($costInput.val() === '') {
                invalidTags.push($costInput);
                isValid = false;
            } else {
                $costInput.removeClass('is-invalid')
            }

            if (!isValid) {
                $.each(invalidTags, function(i, tag) {
                    $(tag).addClass('is-invalid');
                });
                return false;
            }

            showSpinner();

            $.ajax({
                url: '{{ route('stock.purchase') }}',
                type: 'POST',
                data: {
                    _token: $('meta[name="csrf-token"]').attr('content'),
                    type: type,
                    type_id: $typeSelect.val(),
                    type_name: $typeSelect.find('option:selected').text(),
                    width: $widthInput.val(),
                    height: $heightInput.val(),
                    quantity: $quantityInput.val(),
                    cost: $costInput.val(),
                },
                success: function(res) {
                    if (res.success) {
                        $('.triggered').removeClass('triggered').val('').trigger('change');
                        $('#detail-panel').hide();
                        $widthInput.val('');
                        $heightInput.val('');
                        $quantityInput.val('');
                        $costInput.val('');
                    }
                },
                complete: hideSpinner
            });
        }
    </script>
@endsection