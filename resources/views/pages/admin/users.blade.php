@extends('layouts.admin')

@section('content')
    <div class="page-title padding pb-0 ">
        <h2 class="text-md mb-0">Users</h2>
    </div>

    <div class="padding">
        <div class="mb-3">
            <a class="btn btn-danger btn-sm" href="{{ route('user.create') }}"><i class="i-con i-con-plus b-2x"><i></i></i> Create</a>
        </div>
        <div class="table-responsive">
            <table id="datatable" class="table table-theme table-row v-middle" data-plugin="dataTable">
                <thead>
                <tr>
                    <th><span class="text-muted">No.</span></th>
                    <th><span class="text-muted">Username</span></th>
                    <th><span class="text-muted">E-mail</span></th>
                </tr>
                </thead>
                <tbody>
                @php $id = 1; @endphp
                @foreach($users as $user)
                    <tr data-id="{{$id}}">
                        <td>
                            <small class="text-muted">{{$id}}</small>
                        </td>
                        <td class="flex">
                            <a href="{{ route('user.get', $user->id) }}" class="item-author ">{{ $user->name }}</a>
                        </td>
                        <td>
                            <span class="item-amount text-sm ">
                              {{ $user->email }}
                            </span>
                        </td>
                    </tr>
                    @php $id ++; @endphp
                @endforeach
                </tbody>
            </table>
        </div>
    </div>
@endsection