<?php

namespace App\Http\Controllers;

use App\Models\MutasiCW1;
use Illuminate\Http\Request;

class MutasiCWController extends Controller
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
        return view('mutasi_cws.index', [
            'mutasi_cws' => MutasiCW1::orderBy('id', 'DESC')->paginate(10)
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
     * @param  \App\Models\MutasiCW1  $mutasiCW1
     * @return \Illuminate\Http\Response
     */
    public function show(MutasiCW1 $mutasiCW1)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\MutasiCW1  $mutasiCW1
     * @return \Illuminate\Http\Response
     */
    public function edit(MutasiCW1 $mutasiCW1)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\MutasiCW1  $mutasiCW1
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, MutasiCW1 $mutasiCW1)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\MutasiCW1  $mutasiCW1
     * @return \Illuminate\Http\Response
     */
    public function destroy(MutasiCW1 $mutasiCW1)
    {
        //
    }
}
