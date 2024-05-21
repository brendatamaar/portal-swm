@extends('layouts.master')

@section('body')

@component('components.header')
@endcomponent

@component('components.sidebar')
@endcomponent

<main id="main" class="main">
    @yield('content')
</main>

@endsection