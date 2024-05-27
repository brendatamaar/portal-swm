<?php

namespace App\Http\Controllers;

use App\Models\Sampling;
use App\Http\Requests\StoreSamplingRequest;
use App\Http\Requests\UpdateSamplingRequest;

class SamplingController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StoreSamplingRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreSamplingRequest $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Sampling  $sampling
     * @return \Illuminate\Http\Response
     */
    public function show(Sampling $sampling)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Sampling  $sampling
     * @return \Illuminate\Http\Response
     */
    public function edit(Sampling $sampling)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateSamplingRequest  $request
     * @param  \App\Models\Sampling  $sampling
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateSamplingRequest $request, Sampling $sampling)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Sampling  $sampling
     * @return \Illuminate\Http\Response
     */
    public function destroy(Sampling $sampling)
    {
        //
    }
}
