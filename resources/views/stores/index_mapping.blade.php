@extends('layout.master')

@section('content')
    <!-- Pop-up Alert -->
    <div class="alert alert-success alert-dismissible fade show" id="successAlert" role="alert" style="display: none;">
        Data updated successfully!
        <button type="button" class="close" data-dismiss="alert" aria-label="Close" onclick="location.reload();">
            <span aria-hidden="true">&times;</span>
        </button>
    </div>
    <div class="alert alert-danger alert-dismissible fade show" id="errorAlert" role="alert" style="display: none;">
        Failed to update data!
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
        </button>
    </div>
    
    <div class="card">
        <div class="card-body">
            <h1 class="card-title">Manage Region Mapping</h1>
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th scope="col">Region</th>
                        <th scope="col">Data No</th>
                    </tr>
                </thead>
                <tbody>
                    @forelse ($mappings as $mapping)
                        <tr>
                            <td data-content="Site Id">{{ $mapping->region_id }}</td>
                            <td data-content="Site Name">{{ $mapping->data_no }}</td>
                            <td data-content="Action">
                                <button class="btn btn-primary edit-btn" data-id="{{ $mapping->id }}"
                                    data-no="{{ $mapping->data_no }}" data-name="{{ $mapping->region_id }}"
                                    data-toggle="modal" data-target="#editModal">Edit</button>
                            </td>
                            </td>
                        </tr>
                    @empty
                        <td colspan="5">
                            <span class="text-danger">
                                <strong>No User Found!</strong>
                            </span>
                        </td>
                    @endforelse
                </tbody>
            </table>
            {{ $mappings->links() }}

        </div>
    </div>

    <!-- Edit Modal -->
    <div class="modal fade" id="editModal" tabindex="-1" role="dialog" aria-labelledby="editModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="editModalLabel">Edit Mapping for <span id="region_name"></span></h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form id="editForm">
                        <div class="form-group">
                            <label for="data_no">Data No:</label>
                            <input type="text" class="form-control" id="data_no">
                        </div>
                        <input type="hidden" id="region_id">
                        <input type="hidden" name="_token" id="token" value="{{ csrf_token() }}">
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary save-btn">Save</button>
                </div>
            </div>
        </div>
    </div>
@endsection

@push('custom-scripts')
    <script type="text/javascript">
        $(document).ready(function() {

            $('.edit-btn').click(function() {
                var id = $(this).data('id');
                var dataNo = $(this).data('no');
                var regName = $(this).data('name');
                $('#region_id').val(id);
                $('#data_no').val(dataNo);
                $('#region_name').text(regName);
            });

            $('.save-btn').click(function() {
                var id = $('#region_id').val();
                var dataNo = $('#data_no').val();
                $.ajax({
                    url: '/stores/update-mapping/' + id,
                    type: 'POST',
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    },
                    data: {
                        _token: $('#token').val(),
                        data_no: dataNo
                    },
                    success: function(response) {
                        if (response.success) {
                            $('#editModal').modal('hide');
                            $('#successAlert').show();
                        } else {
                            $('#editModal').modal('hide');
                            $('#errorAlert').show();
                        }
                    },
                    error: function() {
                        $('#editModal').modal('hide');
                        $('#errorAlert').show();
                    }
                });
            });
        });
    </script>
@endpush
