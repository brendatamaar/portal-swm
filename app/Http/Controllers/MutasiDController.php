<?php

namespace App\Http\Controllers;

use App\Models\MutasiD1;
use Illuminate\Http\Request;

class MutasiDController extends Controller
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
        return view('mutasi_ds.index', [
            'mutasi_ds' => MutasiD1::orderBy('id', 'DESC')->paginate(10)
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
     * @param  \App\Models\MutasiD1  $mutasiD1
     * @return \Illuminate\Http\Response
     */
    public function show(MutasiD1 $mutasiD1)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\MutasiD1  $mutasiD1
     * @return \Illuminate\Http\Response
     */
    public function edit(MutasiD1 $mutasiD1)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\MutasiD1  $mutasiD1
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, MutasiD1 $mutasiD1)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\MutasiD1  $mutasiD1
     * @return \Illuminate\Http\Response
     */
    public function destroy(MutasiD1 $mutasiD1)
    {
        //
    }
}
