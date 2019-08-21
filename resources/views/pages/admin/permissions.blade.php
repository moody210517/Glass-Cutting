@extends('layouts.admin')

@section('content')
    <div class="page-title padding pb-0 ">
        <h2 class="text-md mb-0">Roles</h2>
    </div>

    <div class="padding">
        <div class="table-responsive">
            <table id="datatable" class="table table-theme table-row v-middle" data-plugin="dataTable">
                <thead>
                <tr>
                    <th><span class="text-muted">No.</span></th>
                    <th><span class="text-muted">Role</span></th>
                    <th><span class="text-muted"></span></th>
                </tr>
                </thead>
                <tbody>
                @php $id = 1; @endphp
                @foreach($permissions as $permission)
                    <tr data-id="{{$id}}">
                        <td>
                            <small class="text-muted">{{$id}}</small>
                        </td>
                        <td class="flex">
                            {{ $permission->name }}
                        </td>
                        <td></td>
                    </tr>
                    @php $id ++; @endphp
                @endforeach
                </tbody>
            </table>
        </div>
    </div>
@endsection