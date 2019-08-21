@extends('layouts.admin')

@section('content')
    <div class="page-title padding pb-0 ">
        <h2 class="text-md mb-0">Baron</h2>
    </div>

    <div class="padding">
        <div class="row">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-header">
                        <strong>Information</strong>
                    </div>
                    <div class="card-body">
                        <form method="post" action="{{ route('baron.store') }}">
                            @csrf
                            <div class="form-group row">
                                <label class="col-sm-4 col-form-label">Name</label>
                                <div class="col-sm-8">
                                    <input type="text" name="name" class="form-control" id="baron-name">
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="col-sm-4 col-form-label">Address</label>
                                <div class="col-sm-8">
                                    <input type="text" name="address" class="form-control" id="baron-address">
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
            $('#baron-name').on('keyup', function() {
                if ($(this).val() === '') {
                    $(this).addClass('is-invalid');
                } else {
                    $(this).removeClass('is-invalid');
                }
            });

            $('form').on('submit', function(e) {
                let $nameInput = $('#baron-name');
                if ($nameInput.val() === '') {
                    $nameInput.addClass('is-invalid');
                    e.stopPropagation();
                    e.preventDefault();
                    return false;
                }
            });
        });
    </script>
@endsection