<?php

namespace App\Http\Controllers;

use App\Models\CrystalReport1;
use Illuminate\Http\Request;

class CrystalReportController extends Controller
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
        return view('crystal_reports.index', [
            'crystal_reports' => CrystalReport1::orderBy('id', 'DESC')->paginate(10)
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
     * @param  \App\Models\CrystalReport1  $crystalReport1
     * @return \Illuminate\Http\Response
     */
    public function show(CrystalReport1 $crystalReport1)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\CrystalReport1  $crystalReport1
     * @return \Illuminate\Http\Response
     */
    public function edit(CrystalReport1 $crystalReport1)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\CrystalReport1  $crystalReport1
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, CrystalReport1 $crystalReport1)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\CrystalReport1  $crystalReport1
     * @return \Illuminate\Http\Response
     */
    public function destroy(CrystalReport1 $crystalReport1)
    {
        //
    }
}
