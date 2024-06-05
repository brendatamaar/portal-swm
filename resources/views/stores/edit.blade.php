@extends('layout.master')

@push('plugin-styles')
@endpush

@section('content')
    <div class="card">
        <div class="card-header">
            <a href="{{ route('stores.index') }}" class="btn btn-primary btn-sm">&larr; Back</a>
        </div>
        <div class="card-body">
            <form action="{{ route('stores.update', $store->site_id) }}" method="post">
                @csrf
                @method('PUT')

                <div class="mb-3 row">
                    <label for="Site Id" class="col-md-4 col-form-label text-md-end text-start">Site Id</label>
                    <div class="col-md-6">
                        <input type="text" class="form-control @error('site_id') is-invalid @enderror" id="site_id"
                            name="site_id" value="{{ $store->site_id }}">
                        @if ($errors->has('site_id'))
                            <span class="text-danger">{{ $errors->first('site_id') }}</span>
                        @endif
                    </div>
                </div>

                <div class="mb-3 row">
                    <label for="email" class="col-md-4 col-form-label text-md-end text-start">Site Name</label>
                    <div class="col-md-6">
                        <input type="text" class="form-control @error('site_name') is-invalid @enderror" id="site_name"
                            name="site_name" value="{{ $store->site_name }}">
                        @if ($errors->has('site_name'))
                            <span class="text-danger">{{ $errors->first('site_name') }}</span>
                        @endif
                    </div>
                </div>

                <div class="mb-3 row">
                    <input type="submit" class="col-md-3 offset-md-5 btn btn-primary" value="Update Store">
                </div>

            </form>
        </div>
    </div>
@endsection
