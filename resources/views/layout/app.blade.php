@extends('layouts.master')

@section('body')

@component('components.header')
@endcomponent

@component('components.sidebar')
@endcomponent

<main id="main" class="main">

    @yield('content')

</main>

@component('components.footer')
@endcomponent

<a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i
        class="bi bi-arrow-up-short"></i></a>

@endsection