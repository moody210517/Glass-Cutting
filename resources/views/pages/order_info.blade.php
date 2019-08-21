@extends('layouts.basic')

@section('title')Create Order @endsection

@section('content')
    <div class="d-flex flex-column flex">
        <div id="content-body">
            <div class="p-3 p-md-5">
                <div class="card p-0 col-lg-6 offset-lg-3">
                    <div class="row no-gutters">
                        <div class="col-md-12">
                            <div class="p-4">
                                <h1 class="card-title text-center">{{ strtoupper(__('Glass Baron')) }}</h1>
                                <h5 class="mb-4 text-center">{{ __('Customer Information') }}</h5>

                                <form method="POST" action="{{ route(config('action.create-order')) }}">
                                    @csrf
                                    <div class="form-group row">
                                        <div class="col-md-4">
                                            <label>Name of Customer</label>
                                        </div>
                                        <div class="col-md-8">
                                            <input type="text" class="form-control" name="customer-name" required>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <div class="col-md-4">
                                            <label>Physical Address</label>
                                        </div>
                                        <div class="col-md-8">
                                            <input type="text" class="form-control" name="physical-address" required>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <div class="col-md-4">
                                            <label>ID Number</label>
                                        </div>
                                        <div class="col-md-8">
                                            <input type="text" class="form-control" name="id-number">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <div class="col-md-4">
                                            <label>Phone Number</label>
                                        </div>
                                        <div class="col-md-8">
                                            <input type="text" class="form-control" name="phone-number" required>
                                        </div>
                                    </div>
                                    <div class="d-flex justify-content-center">
                                        <button type="submit" class="btn btn-white">Enter</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection