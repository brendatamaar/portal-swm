@extends('layout.master')

@section('content')
    <div class="container">
        <h1>Frequently Asked Questions</h1>
        <a href="{{ route('faqs.create') }}" class="btn btn-primary">Add FAQ</a>
        @if ($message = Session::get('success'))
            <div class="alert alert-success">
                <p>{{ $message }}</p>
            </div>
        @endif
        <table class="table table-bordered">
            <tr>
                <th>No</th>
                <th>Question</th>
                <th>Answer</th>
                <th width="280px">Action</th>
            </tr>
            @foreach ($faqs as $faq)
                <tr>
                    <td>{{ ++$i }}</td>
                    <td>{{ $faq->question }}</td>
                    <td>{{ $faq->answer }}</td>
                    <td>
                        <form action="{{ route('faqs.destroy', $faq->id) }}" method="POST">
                            <a class="btn btn-info" href="{{ route('faqs.show', $faq->id) }}">Show</a>
                            <a class="btn btn-primary" href="{{ route('faqs.edit', $faq->id) }}">Edit</a>
                            @csrf
                            @method('DELETE')
                            <button type="submit" class="btn btn-danger">Delete</button>
                        </form>
                    </td>
                </tr>
            @endforeach
        </table>
    </div>
@endsection
