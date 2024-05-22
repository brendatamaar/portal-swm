@extends('layouts.dashboard')

@section('content')

<div class="card">
    <div class="card-header">Manage Users</div>
    <div class="card-body">
        @can('create-user')
        <a href="{{ route('users.create') }}" class="btn btn-success btn-sm my-2"><i class="bi bi-plus-circle"></i> Add New User</a>
        @endcan
        <div class="table-responsive">
            <table class="table table-striped table-mobile-responsive table-mobile-sided">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Name</th>
                        <th scope="col">Email</th>
                        <th scope="col">Jabatan</th>
                        <th scope="col">Region</th>
                        <th scope="col">Site Name</th>
                        <th scope="col">Roles</th>
                        <th scope="col">Action</th>
                    </tr>
                </thead>
                <tbody>
                    @forelse ($users as $user)
                    <tr>
                        <td scope="row" data-content="#">{{ $loop->iteration }}</td>
                        <td data-content="Name">{{ $user->name }}</td>
                        <td data-content="Email">{{ $user->email }}</td>
                        <td data-content="Region">{{ $user->positions->position }}</td>
                        <td data-content="Region">{{ $user->regions->name }}</td>
                        <td data-content="Site Name">{{ $user->stores->site_name }}</td>
                        <td data-content="Roles">
                            @forelse ($user->getRoleNames() as $role)
                            <span class="badge bg-primary text-white">{{ $role }}</span>
                            @empty
                            @endforelse
                        </td>
                        <td data-content="Action">
                            <form action="{{ route('users.destroy', $user->id) }}" method="post">
                                @csrf
                                @method('DELETE')

                                <a href="{{ route('users.show', $user->id) }}" class="btn btn-warning btn-sm mt-2"><i class="bi bi-eye"></i> Show</a>

                                @if (in_array('Super Admin', $user->getRoleNames()->toArray() ?? []) )
                                @if (Auth::user()->hasRole('Super Admin'))
                                <a href="{{ route('users.edit', $user->id) }}" class="btn btn-primary btn-sm mt-2"><i class="bi bi-pencil-square"></i> Edit</a>
                                @endif
                                @else
                                @can('edit-user')
                                <a href="{{ route('users.edit', $user->id) }}" class="btn btn-primary btn-sm mt-2"><i class="bi bi-pencil-square"></i> Edit</a>
                                @endcan

                                @can('delete-user')
                                @if (Auth::user()->id!=$user->id)
                                <button type="submit" class="btn btn-danger btn-sm mt-2" onclick="return confirm('Do you want to delete this user?');"><i class="bi bi-trash"></i> Delete</button>
                                @endif
                                @endcan
                                @endif

                            </form>
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

            {{ $users->links() }}
        </div>
    </div>
</div>

@endsection