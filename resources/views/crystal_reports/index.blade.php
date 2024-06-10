@extends('layout.master')

@section('content')
    <div class="card">
        <div class="card-body">
            <h1 class="card-title">Manage Crystal Report</h1>
            @can('create-user')
                <a href="{{ route('cycle_counts.create') }}" class="btn btn-success btn-sm my-2"><i
                        class="bi bi-plus-circle"></i>Upload Crystal Report</a>
            @endcan
            <div class="table-responsive">
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Site ID</th>
                            <th scope="col">Site Name</th>
                            <th scope="col">Location</th>
                            <th scope="col">Location Type</th>
                            <th scope="col">Category</th>
                            <th scope="col">Item No</th>
                            <th scope="col">Item Name</th>
                            <th scope="col">Barcode</th>
                            <th scope="col">UOM</th>
                        </tr>
                    </thead>
                    <tbody>
                        @forelse ($crystal_reports as $crystal_report)
                            <tr>
                                <th scope="row">{{ $loop->iteration }}</th>
                                <td>{{ $crystal_report->site_id }}</td>
                                <td>{{ $crystal_report->site_name }}</td>
                                <td>{{ $crystal_report->location }}</td>
                                <td>{{ $crystal_report->location_type }}</td>
                                <td>{{ $crystal_report->category }}</td>
                                <td>{{ $crystal_report->item_no }}</td>
                                <td>{{ $crystal_report->item_name }}</td>
                                <td>{{ $crystal_report->barcode }}</td>
                                <td>{{ $crystal_report->uom }}</td>
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
            {{ $crystal_reports->links() }}

        </div>
    </div>
@endsection
