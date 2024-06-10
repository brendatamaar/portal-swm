<?php

namespace App\Http\Controllers;

use App\Models\MutasiTagBin1;
use Illuminate\Http\Request;

class MutasiTagBinController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    /**
     * Display a listing of the resource.
     *
     */
    public function index()
    {
        return view('mutasi_tag_bins.index', [
            'mutasi_tag_bins' => MutasiTagBin1::orderBy('id', 'DESC')->paginate(10)
        ]);
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
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\MutasiTagBin1  $mutasiTagBin1
     * @return \Illuminate\Http\Response
     */
    public function show(MutasiTagBin1 $mutasiTagBin1)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\MutasiTagBin1  $mutasiTagBin1
     * @return \Illuminate\Http\Response
     */
    public function edit(MutasiTagBin1 $mutasiTagBin1)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\MutasiTagBin1  $mutasiTagBin1
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, MutasiTagBin1 $mutasiTagBin1)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\MutasiTagBin1  $mutasiTagBin1
     * @return \Illuminate\Http\Response
     */
    public function destroy(MutasiTagBin1 $mutasiTagBin1)
    {
        //
    }
}