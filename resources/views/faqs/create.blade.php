@extends('layout.master')

@push('plugin-styles')
@endpush

@section('content')
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <h1>Add New FAQ</h1>
                <form action="{{ route('faqs.store') }}" method="POST">
                    @csrf
                    <div class="form-group">
                        <label for="question">Question:</label>
                        <input type="text" class="form-control" id="question" name="question" required>
                    </div>
                    <div class="form-group">
                        <label for="answer">Answer:</label>
                        <textarea class="form-control" id="answer" name="answer" rows="5" required></textarea>
                    </div>
                    <button type="submit" class="btn btn-primary">Submit</button>
                </form>
            </div>
        </div>
    </div>
@endsection

@push('plugin-scripts')
    <script src="{{ asset('assets/js/jquery-3.7.1.min.js') }}"></script>
@endpush

@push('custom-scripts')
    <script type="text/javascript">
        $(document).ready(function() {

            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });

            $('#region_id').change(function() {
                var region_id = $(this).val();
                var siteSelect = $('#site_id');

                if (region_id) {
                    $.ajax({
                        url: '{{ url('api/get-sites') }}/' + region_id,
                        type: 'GET',
                        dataType: 'json',
                        success: function(result) {
                            siteSelect.empty();
                            siteSelect.append('<option value="">Select a store</option>');
                            $.each(result, function(key, value) {
                                siteSelect.append('<option value="' + value.site_id +
                                    '">' + value.site_name + '</option>');
                            });
                        },
                        error: function(jqXHR, textStatus, errorThrown) {
                            console.log('Error getting sites:', textStatus, errorThrown);
                        }
                    });
                } else {
                    siteSelect.empty();
                    siteSelect.append('<option value="">Select a region</option>');
                }
            });
        });
    </script>
@endpush
