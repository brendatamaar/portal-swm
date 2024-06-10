@extends('layout.master')

@section('content')
    <div class="card">
        <div class="card-body">
            <h1 class="card-title">Manage Mutasi C W</h1>
            @can('create-user')
                <a href="{{ route('cycle_counts.create') }}" class="btn btn-success btn-sm my-2"><i
                        class="bi bi-plus-circle"></i>Upload Mutasi C W</a>
            @endcan
            <div class="table-responsive">
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Nomor Kertas Mutasi</th>
                            <th scope="col">Site ID</th>
                            <th scope="col">Site Name</th>
                            <th scope="col">Tag Bin Location</th>
                            <th scope="col">Area</th>
                            <th scope="col">Zone</th>
                            <th scope="col">Status</th>
                        </tr>
                    </thead>
                    <tbody>
                        @forelse ($mutasi_cws as $mutasi_cw)
                            <tr>
                                <th scope="row">{{ $loop->iteration }}</th>
                                <td>{{ $mutasi_cw->no_kertas }}</td>
                                <td>{{ $mutasi_cw->site_id }}</td>
                                <td>{{ $mutasi_cw->site_name }}</td>
                                <td>{{ $mutasi_cw->tag_bin_location }}</td>
                                <td>{{ $mutasi_cw->area }}</td>
                                <td>{{ $mutasi_cw->zone }}</td>
                                <td>{{ $mutasi_cw->status }}</td>
                            </tr>
                        @empty
                            <td colspan="5">
                                <span class="text-danger">
                                    <strong>No Data Found!</strong>
                                </span>
                            </td>
                        @endforelse
                    </tbody>
                </table>

            </div>
            {{ $mutasi_cws->links() }}

        </div>
    </div>
@endsection
