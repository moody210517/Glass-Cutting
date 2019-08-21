@extends('layouts.basic')

@section('title')Modify Order @endsection

@section('content')
    <div class="d-flex flex-column flex">
        <div id="content-body">
            <div class="p-3 p-md-5">
                <div class="card p-0 col-lg-10 offset-lg-1">
                    <div class="row no-gutters">
                        <div class="col-md-12">
                            <div class="p-4">
                                <h1 class="card-title text-center mb-3">{{ strtoupper(__('Glass Baron')) }}</h1>
                                <h5 class="mb-4 text-center">{{ __('Modify Order') }}</h5>

                                <div class="padding">
                                    <div class="table-responsive pb-3">
                                        <table id="datatable" class="table table-theme table-row v-middle" data-plugin="dataTable">
                                            <thead>
                                            <tr>
                                                <th><span class="text-muted">No.</span></th>
                                                <th><span class="text-muted">Order Id</span></th>
                                                <th><span class="text-muted">Name</span></th>
                                                <th><span class="text-muted">Cell</span></th>
                                                <th><span class="text-muted">Address</span></th>
                                                <th><span class="text-muted">ID</span></th>
                                                <th><span class="text-muted">Status</span></th>
                                                <th></th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            @php $id = 1; @endphp
                                            @foreach($baskets as $basket)
                                                <tr data-id="{{ $id }}">
                                                    <td>
                                                        <small class="text-muted">{{ $id }}</small>
                                                    </td>
                                                    
                                                    
                                                    <td>
                                                        @if ($basket->status)
                                                       
                                                        <a href="{{ route('order.show', ['uid' => urlencode($basket->uid)]) }}">{{ $basket->uid }}</a>
                                                     
                                                        @else
                                                             <a href="{{ route('basket.show', ['uid' => urlencode($basket->uid)]) }}">{{ $basket->uid }}</a>
                                                        @endif
                                                    </td>
                                                    
                                                    
                                                    
                                                    <td class="flex">{{ $basket->customer_name }}</td>
                                                    <td>{{ $basket->customer_phone }}</td>
                                                    <td>{{ $basket->customer_address }}</td>
                                                    <td>{{ $basket->customer_id }}</td>
                                                    <td>
                                                        @if($basket->status == 'complete')
                                                            <span class="badge badge-success">{{ $basket->status }}</span>
                                                        @elseif($basket->status == 'processing')
                                                            <span class="badge badge-primary">{{ $basket->status }}</span>
                                                        @elseif($basket->status == 'delivered')
                                                            <span class="badge badge-warning">{{ $basket->status }}</span>
                                                        @else
                                                            <span class="badge badge-danger">Quoted</span>
                                                        @endif
                                                    </td>
                                                    <td>
                                                        @if ( $basket->status == 'deliveredxx')
                                                        <button class="btn btn-raised btn-wave btn-icon btn-rounded i-con-h-a btn-danger delete-btn" data-uid="{{ $basket->uid }}"><i class="i-con i-con-trash"><i></i></i></button>
                                                        @endif
                                                    </td>
                                                </tr>
                                                @php $id ++; @endphp
                                            @endforeach
                                            </tbody>
                                        </table>
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
        $(document).ready(function() {
            $('.delete-btn').on('click', function() {
                let uid = $(this).data('uid'), $tr = $(this).parents('tr');

                $.ajax({
                    url: '{{ route('basket.delete') }}',
                    type: 'POST',
                    data: {
                        _token: $('meta[name="csrf-token"]').attr('content'),
                        uid: uid,
                    },
                    success: function() {
                        $tr.fadeOut(function() {
                            $(this).remove();
                        });
                    },
                });
            });
        });
    </script>
@endsection