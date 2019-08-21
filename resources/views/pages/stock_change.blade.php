@extends('layouts.basic')

@section('title')Change Stock @endsection

@section('content')
    <div class="d-flex flex-column flex">
        <div id="content-body">
            <div class="p-3 p-md-5">
                <div class="card p-0 col-lg-10 offset-lg-1">
                    <div class="row no-gutters">
                        <div class="col-md-12">
                            <div class="p-4">
                                <h1 class="card-title text-center">{{ strtoupper(__('Glass Baron')) }}</h1>
                                <h5 class="mb-4 text-center">{{ __('Change Stock') }}</h5>
                                <h5 class="mb-4">{{ __('Type of glass:') }}</h5>

                                <div class="d-flex flex-wrap">
                                    <ul class="dropdown-menu pos-stc d-inline m-2" role="menu">
                                        <h6 class="dropdown-header">Clear Monolithic </h6>
                                        @foreach ($glassTypes as $type)
                                            @if ($type->category == 'Clear Monolithic')
                                                <li class="dropdown-item glass-type" data-id="{{ $type->id }}" data-price="{{ $type->price }}">{{ $type->name }}</li>
                                            @endif
                                        @endforeach
                                        <li class="dropdown-divider"></li>
                                        <a href="#" class="type-edit-btn btn btn-block btn-outline-primary">Edit</a>
                                    </ul>
                                    <ul class="dropdown-menu pos-stc d-inline m-2" role="menu">
                                        <h6 class="dropdown-header">Clear Laminated </h6>
                                        @foreach ($glassTypes as $type)
                                            @if ($type->category == 'Clear Laminated')
                                                <li class="dropdown-item glass-type" data-id="{{ $type->id }}" data-price="{{ $type->price }}">{{ $type->name }}</li>
                                            @endif
                                        @endforeach
                                        <li class="dropdown-divider"></li>
                                        <a href="#" class="type-edit-btn btn btn-block btn-outline-primary">Edit</a>
                                    </ul>
                                    <ul class="dropdown-menu pos-stc d-inline m-2" role="menu">
                                        <h6 class="dropdown-header">Obscure </h6>
                                        @foreach ($glassTypes as $type)
                                            @if ($type->category == 'Obscure')
                                                <li class="dropdown-item glass-type" data-id="{{ $type->id }}" data-price="{{ $type->price }}">{{ $type->name }}</li>
                                            @endif
                                        @endforeach
                                        <li class="dropdown-divider"></li>
                                        <a href="#" class="type-edit-btn btn btn-block btn-outline-primary">Edit</a>
                                    </ul>
                                    <ul class="dropdown-menu pos-stc d-inline m-2" role="menu">
                                        <h6 class="dropdown-header">Tinted </h6>
                                        @foreach ($glassTypes as $type)
                                            @if ($type->category == 'Tinted')
                                                <li class="dropdown-item glass-type" data-id="{{ $type->id }}" data-price="{{ $type->price }}">{{ $type->name }}</li>
                                            @endif
                                        @endforeach
                                        <li class="dropdown-divider"></li>
                                        <a href="#" class="type-edit-btn btn btn-block btn-outline-primary">Edit</a>
                                    </ul>
                                    <ul class="dropdown-menu pos-stc d-inline m-2" role="menu">
                                        <h6 class="dropdown-header">Miscellaneous </h6>
                                        @foreach ($glassTypes as $type)
                                            @if ($type->category == 'Miscellaneous')
                                                <li class="dropdown-item glass-type" data-id="{{ $type->id }}" data-price="{{ $type->price }}">{{ $type->name }}</li>
                                            @endif
                                        @endforeach
                                        <li class="dropdown-divider"></li>
                                        <a href="#" class="type-edit-btn btn btn-block btn-outline-primary">Edit</a>
                                    </ul>
                                </div>

                                <div class="row form-group mt-4">
                                    <div class="col-md-3 offset-md-3">
                                        <button class="btn btn-outline-success" id="price-settings-btn">Price Setting</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div id="price-settings-modal" class="modal fade" data-backdrop="true">
                <div class="modal-dialog animate" id="animate">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title">Price Settings</h5>
                        </div>
                        <div class="modal-body text-right p-lg">
                            <div class="row form-group mt-4">
                                <div class="col-md-5">
                                    <label for="delivery-per-km">Delivery Price / km</label>
                                </div>
                                <div class="col-md-6">
                                    <input type="number" class="form-control" id="delivery-per-km" value="{{ $price['deliveryPerKm'] }}" min="0"/>
                                </div>
                            </div>
                            <div class="row form-group mt-4">
                                <div class="col-md-5">
                                    <label for="arising-per-m">Arising Price / m</label>
                                </div>
                                <div class="col-md-6">
                                    <input type="number" class="form-control" id="arising-per-m" value="{{ $price['arisingPerM'] }}" min="0"/>
                                </div>
                            </div>
                            <div class="row form-group mt-4">
                                <div class="col-md-5">
                                    <label for="hard-arising-per-m">Hard Arising Price / m</label>
                                </div>
                                <div class="col-md-6">
                                    <input type="number" class="form-control" id="hard-arising-per-m" value="{{ $price['hArisingPerM'] }}" min="0"/>
                                </div>
                            </div>
                            <div class="row form-group mt-4">
                                <div class="col-md-5">
                                    <label for="drilling-per-hole">Drilling Price / hole</label>
                                </div>
                                <div class="col-md-6">
                                    <input type="number" class="form-control" id="drilling-per-hole" value="{{ $price['drillingPerHole'] }}" min="0"/>
                                </div>
                            </div>
                            <div class="row form-group mt-4">
                                <div class="col-md-5">
                                    <label for="hardening-per-m">Hardening Price / m<sup style="vertical-align: super;">2</sup></label>
                                </div>
                                <div class="col-md-6">
                                    <input type="number" class="form-control" id="hardening-per-m" value="{{ $price['hardeningPerM'] }}" min="0"/>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-white" data-dismiss="modal">Cancel</button>
                            <button type="button" class="btn btn-primary" id="price-save-btn">Save</button>
                        </div>
                    </div>
                </div>
            </div>

            <div id="m-a-a" class="modal fade" data-backdrop="true">
                <div class="modal-dialog animate modal-lg" id="animate">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title">Edit Types</h5>
                        </div>
                        <div class="modal-body text-center p-lg">
                            <div class="form-group text-right">
                                <button class="btn btn-primary btn-rounded" id="add-new-type"><i class="mr-2 i-con i-con-plus"></i> Add</button>
                            </div>
                            <div class="table-responsive pb-3">
                                <table id="datatable" class="table table-theme table-row v-middle" data-plugin="dataTable">
                                    <thead>
                                    <tr>
                                        <th><span class="text-muted">ID</span></th>
                                        <th><span class="text-muted">Name</span></th>
                                        <th><span class="text-muted">Price</span></th>
                                        <th><span class="text-muted"></span></th>
                                    </tr>
                                    </thead>
                                    <tbody></tbody>
                                </table>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <input type="hidden" id="type-category"/>
                            <button type="button" class="btn btn-white" data-dismiss="modal">Cancel</button>
                            <button type="button" class="btn btn-primary" id="type-save-btn">Save</button>
                        </div>
                    </div><!-- /.modal-content -->
                </div>
            </div>
        </div>
    </div>

@endsection

@section('scripts')
    <script>
        let deleted = [];

        $(document).ready(function() {
            $('#price-settings-btn').on('click', function() {
                $('#price-settings-modal').modal('show');
            });

            $('.type-edit-btn').on('click', function(e) {
                e.preventDefault();
                e.stopPropagation();

                $('#type-category').val($(this).parents('ul').find('.dropdown-header').text().trim());

                let typeList = [];
                $('.editing').removeClass('editing');
                $.each($(this).parents('ul').addClass('editing').find('.glass-type'), function(i, el) {
                    typeList.push([
                        i + 1,
                        function() {
                            return '<input type="text" class="form-control" value="' + $(el).text() + '"/>';
                        },
                        function() {
                            return '<input type="text" class="form-control" value="' + $(el).data('price') + '" min="1" step="1" oninput="this.value=this.value.replace(/[^0-9]/g,\'\');"/>';
                        },
                        function (data, type, full) {
                            return '<input type="hidden" class="type-id" value="' + $(el).data('id') + '"/><button class="btn btn-raised btn-wave btn-icon btn-rounded mb-2 i-con-h-a red"><i class="i-con i-con-trash b-2x delete-type"><i></i></i></button>';
                        },
                    ]);
                });

                $('#m-a-a').modal('show');

                $('#datatable').DataTable({
                    destroy: true,
                    data: typeList,
                    searching: false,
                });
                $('#datatable').css('width', '');
            });

            $('#m-a-a').delegate('.delete-type', 'click', function() {
                let $tr = $(this).parents('tr'),
                    type_id = $tr.find('.type-id').val();
                if (deleted.indexOf(type_id) === -1) {
                    deleted.push(type_id);
                }

                $('#datatable').DataTable().row($tr).remove().draw(false);
            });

            $('#add-new-type').on('click', function() {
                let $table = $('#datatable').DataTable();
                let row = [
                    "",
                    function() {
                        return '<input type="text" class="form-control" value="New Type"/>';
                    },
                    function() {
                        return '<input type="text" class="form-control" value="1" min="1" step="1" oninput="this.value=this.value.replace(/[^0-9]/g,\'\');"/>';
                    },
                    function() {
                        return '<button class="btn btn-raised btn-wave btn-icon btn-rounded mb-2 i-con-h-a red"><i class="i-con i-con-trash b-2x delete-type"><i></i></i></button>';
                    },
                ];
                $table.row.add(row).draw(false);
            });

            $('#type-save-btn').on('click', function() {
                let typeList = [], category = $('#type-category').val(), $table = $('#datatable').DataTable();
                $.each($table.rows().data(), function(i) {
                    typeList.push({
                        id: $table.cell(i, 3).nodes().to$().find('input').val(),
                        name: $table.cell(i, 1).nodes().to$().find('input').val(),
                        price: $table.cell(i, 2).nodes().to$().find('input').val(),
                        category: category,
                    });
                });

                showSpinner();

                $.ajax({
                    url: '{{ route('type.save') }}',
                    type: 'POST',
                    data: {
                        _token: $('meta[name="csrf-token"]').attr('content'),
                        category: category,
                        data: typeList,
                        deleted: deleted,
                    },
                    success: function(res) {
                        if (!res.success) return;
                        let newList = res.list;
                        let $editingList = $('.editing');
                        $editingList.find('.glass-type').remove();
                        $.each(newList, function(i, item) {
                            $('<li></li>', {
                                'class': 'dropdown-item glass-type',
                                'data-id': item.id,
                                'data-price': item.price,
                                'text': item.name,
                            }).insertBefore($editingList.find('.dropdown-divider'));
                        });

                        deleted = [];
                        $('#m-a-a').modal('hide');
                    },
                    complete: hideSpinner
                });
            });

            $('#price-save-btn').on('click', function() {
                let $deliveryPriceTag  = $('#delivery-per-km'),    deliveryPrice  = $deliveryPriceTag.val(),
                    $arisingPriceTag   = $('#arising-per-m'),      arisingPrice   = $arisingPriceTag.val(),
                    $hArisingPriceTag  = $('#hard-arising-per-m'), hArisingPrice  = $hArisingPriceTag.val(),
                    $drillingPriceTag  = $('#drilling-per-hole'),  drillingPrice  = $drillingPriceTag.val(),
                    $hardeningPriceTag = $('#hardening-per-m'),    hardeningPrice = $hardeningPriceTag.val(),
                    invalidTags = [],
                    isValid = true;

                if (deliveryPrice === '') {
                    invalidTags.push($deliveryPriceTag);
                    isValid = false;
                } else {
                    $deliveryPriceTag.removeClass('is-invalid');
                }

                if (arisingPrice === '') {
                    invalidTags.push($arisingPriceTag);
                    isValid = false;
                } else {
                    $arisingPriceTag.removeClass('is-invalid');
                }

                if (hArisingPrice === '') {
                    invalidTags.push($hArisingPriceTag);
                    isValid = false;
                } else {
                    $hArisingPriceTag.removeClass('is-invalid');
                }

                if (drillingPrice === '') {
                    invalidTags.push($drillingPriceTag);
                    isValid = false;
                } else {
                    $drillingPriceTag.removeClass('is-invalid');
                }

                if (hardeningPrice === '') {
                    invalidTags.push($hardeningPriceTag);
                    isValid = false;
                } else {
                    $hardeningPriceTag.removeClass('is-invalid');
                }

                if (!isValid) {
                    $.each(invalidTags, function(i, $tag) {
                        $tag.addClass('is-invalid');
                    });
                    return false;
                }

                showSpinner();

                $.ajax({
                    url: '{{ route('setting.price.save') }}',
                    type: 'POST',
                    data: {
                        _token: $('meta[name="csrf-token"]').attr('content'),
                        'delivery-price': deliveryPrice,
                        'arising-price': arisingPrice,
                        'hard-arising-price': hArisingPrice,
                        'drilling-price': drillingPrice,
                        'hardening-price': hardeningPrice,
                    },
                    success: function() {
                        $('#price-settings-modal').modal('hide');
                    },
                    complete: hideSpinner
                });
            });
        });
    </script>
@endsection