@extends('layouts.admin')

@section('content')
    <div class="page-title padding pb-0 ">
        <h2 class="text-md mb-0">User</h2>
    </div>

    <div class="padding">
        <div class="row">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-header">
                        <strong>Information</strong>
                    </div>
                    <div class="card-body">
                        <form method="post" action="{{ route('user.store') }}">
                            @csrf
                            <div class="form-group row">
                                <label class="col-sm-4 col-form-label">Username</label>
                                <div class="col-sm-8">
                                    <input type="text" name="username" class="form-control">
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="col-sm-4 col-form-label">Email</label>
                                <div class="col-sm-8">
                                    <input type="email" name="email" class="form-control">
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="col-sm-4 col-form-label">Password</label>
                                <div class="col-sm-8">
                                    <input type="password" id="password" name="password" class="form-control">
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="col-sm-4 col-form-label">Confirm Password</label>
                                <div class="col-sm-8">
                                    <input type="password" id="password-confirm" class="form-control">
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="col-sm-4 col-form-label">Role</label>
                                <div class="col-sm-8">
                                    <select id="role-select" name="role" class="form-control" data-plugin="select2" data-option="{}" data-minimum-results-for-search="Infinity" data-placeholder="Select" required>
                                        <option></option>
                                        @foreach ($roles as $role)
                                            <option value="{{ $role->name }}">{{ $role->name }}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="col-sm-4 col-form-label">Baron</label>
                                <div class="col-sm-8">
                                    <select id="baron-select" name="baron" class="form-control" data-plugin="select2" data-option="{}" data-minimum-results-for-search="Infinity" data-placeholder="Select" required>
                                        <option></option>
                                        @foreach ($barons as $baron)
                                            <option value="{{ $baron->id }}">{{ $baron->name }}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>

                            <div class="d-flex justify-content-center">
                                <button type="submit" class="btn btn-success">Save</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

@section('scripts')
    <script>
        $(document).ready(function() {
            $('#password-confirm').on('keyup', function() {
                let password = $('#password').val();
                if (password === $(this).val()) {
                    $(this).removeClass('is-invalid');
                } else {
                    $(this).addClass('is-invalid');
                }
            });

            $('#role-select').on('change', function() {
                if ($(this).val() === 'admin') {
                    $('#baron-select').attr('disabled', true);
                } else {
                    $('#baron-select').attr('disabled', false);
                }
            });

            $('form').on('submit', function(e) {
                let $passwordInput = $('#password'),
                    $passwordConfirmInput = $('#password-confirm');
                if ($passwordInput.val() === '') {
                    $passwordInput.addClass('is-invalid');
                    e.stopPropagation();
                    e.preventDefault();
                    return false;
                }
                if ($passwordInput.val() !== $passwordConfirmInput.val()) {
                    $passwordConfirmInput.addClass('is-invalid');
                    e.stopPropagation();
                    e.preventDefault();
                    return false;
                }
            });
        });
    </script>
@endsection