@section('title')Action @endsection

@extends('layouts.basic')

@section('content')
    <div class="d-flex flex-column flex">
        <div id="content-body">
            <div class="p-3 p-md-5">
                <div class="card p-0 col-lg-6 offset-lg-3">
                    <div class="row no-gutters">
                        <div class="col-md-12">
                            <div class="p-4">
                                <h1 class="card-title text-center">{{ strtoupper(__('Glass Baron')) }}</h1>
                                <h5 class="mb-4">{{ __('Would you like to:') }}</h5>

                                @can('modify-order')
                                <div class="form-group row">
                                    <div class="col-sm-8 offset-1">
                                        <a class="text-dark" href="{{ route(config('action.modify-order')) }}">{{ __('Modify existing order') }}</a>
                                    </div>
                                </div>
                                @endcan
                                @can('create-order')
                                <div class="form-group row">
                                    <div class="col-sm-8 offset-1">
                                        <a class="text-dark" href="{{ route(config('action.info-order')) }}">{{ __('Create new order') }}</a>
                                    </div>
                                </div>
                                @endcan
                                @can('depot-manage')
                                <div class="form-group row">
                                    <div class="col-sm-8 offset-1">
                                        <a class="text-dark" href="{{ route(config('action.depot-manage')) }}">{{ __('Open depot page') }}</a>
                                    </div>
                                </div>
                                @endcan
                                @can('record-receipt')
                                <div class="form-group row">
                                    <div class="col-sm-8 offset-1">
                                        <a class="text-dark" href="{{ route(config('action.record-receipt')) }}">{{ __('Record receipts') }}</a>
                                    </div>
                                </div>
                                @endcan
                                @can('add-stock')
                                <div class="form-group row">
                                    <div class="col-sm-8 offset-1">
                                        <a class="text-dark" href="{{ route(config('action.add-stock')) }}">{{ __('Add new stock') }}</a>
                                    </div>
                                </div>
                                @endcan
                                @can('change-stock')
                                <div class="form-group row">
                                    <div class="col-sm-8 offset-1">
                                        <a class="text-dark" href="{{ route(config('action.change-stock')) }}">{{ __('Change stock available') }}</a>
                                    </div>
                                </div>
                                @endcan
                                @can('count-stock')
                                <div class="form-group row">
                                    <div class="col-sm-8 offset-1">
                                        <a class="text-dark" href="{{ route(config('action.count-stock')) }}">{{ __('Count stock') }}</a>
                                    </div>
                                </div>
                                @endcan
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection