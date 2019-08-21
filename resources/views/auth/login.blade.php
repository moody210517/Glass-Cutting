@section('title')Login @endsection

@extends('layouts.basic')

@section('content')
    <div class="d-flex flex-column flex">
        <div>
            <div class="p-3 p-md-5">
                <div class="card p-0 col-lg-6 offset-lg-3">
                    <div class="row no-gutters">
                        <div class="col-md-12" id="content-body">
                            <div class="p-4">
                                <h1 class="text-center">{{ strtoupper(__('Glass Baron')) }}</h1>
                                <h5 class="mb-4">{{ __('Manager / Depot / Sales Person') }}</h5>
                                <form class="" role="form" method="POST" action="{{ route('login') }}">
                                    @csrf

                                    <div class="form-group">
                                        <label>{{ __('Username') }}</label>
                                        <input type="text" class="form-control @error('name') is-invalid @enderror" name="name" value="{{ old('name') }}" placeholder="username" required autofocus>

                                        @error('name')
                                        <ul class="list-unstyled text-sm mt-1 text-muted filled">
                                            <li class="parsley-required">{{ $message }}</li>
                                        </ul>
                                        @enderror
                                    </div>
                                    <div class="form-group">
                                        <label>{{ __('Password') }}</label>
                                        <input type="password" class="form-control @error('password') is-invalid @enderror" name="password" placeholder="Password" autocomplete="current-password">

                                        @error('password')
                                        <ul class="list-unstyled text-sm mt-1 text-muted filled">
                                            <li class="parsley-required">{{ $message }}</li>
                                        </ul>
                                        @enderror
                                    </div>
                                    <button type="submit" class="btn btn-primary mb-4 float-right">{{ __('Enter') }}</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
