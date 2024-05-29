@extends('layouts.dashboard')

@section('content')
<div class="row justify-content-center">
    <div class="col-md-8">
        <div class="card">
            <div class="card-header">
                <div class="float-start">
                    Add New Data
                </div>
            </div>
            <div class="card-body">
                <form action="{{ route('import') }}" method="POST" enctype="multipart/form-data">
                    @csrf
                    <div>
                        <label>File 1:</label>
                        <input type="file" name="file1" required>
                    </div>
                    <div>
                        <label>File 2:</label>
                        <input type="file" name="file2" required>
                    </div>
                    <button type="submit">Import</button>
                </form>
            </div>
        </div>
    </div>
</div>
@endsection