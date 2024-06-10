@extends('layout.master')

@section('content')
    <div class="card">
        <div class="card-body">
            <h1 class="card-title">Manage Mutasi Tag Bin</h1>
            @can('create-user')
                <a href="{{ route('mutasi_tag_bins.create') }}" class="btn btn-success btn-sm my-2"><i
                        class="bi bi-plus-circle"></i> Upload Mutasi Tag Bin</a>
            @endcan
            <div class="table-responsive">
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th scope="col">Site ID</th>
                            <th scope="col">Site Name</th>
                            <th scope="col">Tag Bin Location</th>
                            <th scope="col">Area</th>
                            <th scope="col">Zone</th>
                            <th scope="col">Status</th>
                        </tr>
                    </thead>
                    <tbody>
                        @forelse ($mutasi_tag_bins as $mutasi_tag_bin)
                            <tr>
                                <th scope="row">{{ $loop->iteration }}</th>
                                <td>{{ $mutasi_tag_bin->site_id }}</td>
                                <td>{{ $mutasi_tag_bin->site_name }}</td>
                                <td>{{ $mutasi_tag_bin->tag_bin_location }}</td>
                                <td>{{ $mutasi_tag_bin->area }}</td>
                                <td>{{ $mutasi_tag_bin->zone }}</td>
                                <td>{{ $mutasi_tag_bin->status }}</td>
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
            {{ $mutasi_tag_bins->links() }}

        </div>
    </div>
@endsection
