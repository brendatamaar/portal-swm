<?php

namespace App\Http\Controllers;

use App\Models\MutasiD1;
use App\Models\MutasiD2;
use App\Models\MutasiD3;
use App\Models\MutasiD4;
use App\Models\MutasiD5;
use App\Models\MutasiD6;
use App\Models\MutasiD7;
use Illuminate\Http\Request;
use App\Models\RegionImportMappings;
use Maatwebsite\Excel\Facades\Excel;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\RedirectResponse;
use Barryvdh\DomPDF\Facade\Pdf as PDF;

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

    /**
     * Remove all data.
     */
    public function deleteAll(): RedirectResponse
    {
        $user = auth()->user();
        $regionId = $user->region_id;

        // Fetch the import class for MutasiD from the database
        $mapping = RegionImportMappings::where('region_id', $regionId)->first();

        if (!$mapping || !$mapping->data_no) {
            return redirect('mutasi_ds')->with('error', 'Invalid region ID or no import class defined for MutasiD!');
        }

        $modelClass = 'App\\Models\\MutasiD' . $mapping->data_no;

        if (!class_exists($modelClass)) {
            return redirect('mutasi_ds')->with('error', 'The specified import class does not exist.');
        }

        $modelClass::truncate();
        return redirect()->route('mutasi_ds.index')
            ->with('error', 'Semua data berhasil dihapus.');
    }

    public function importExcel(Request $request)
    {
        $indexSheet = $request->input('sheet');
        $user = auth()->user();
        $regionId = $user->region_id;

        // Fetch the import class for MutasiD from the database
        $mapping = RegionImportMappings::where('region_id', $regionId)->first();

        if (!$mapping || !$mapping->data_no) {
            return redirect('mutasi_ds')->with('error', 'Invalid region ID or no import class defined for MutasiD!');
        }

        $importClass = 'App\\Imports\\MutasiD' . $mapping->data_no . 'Import';

        try {
            Excel::import(new $importClass($indexSheet), $request->file('file'));
        } catch (\Exception $e) {
            return redirect('mutasi_ds')->with('error', 'Error! Pastikan sheet dan template excel sudah sesuai. ');
        }

        return redirect('mutasi_ds')->with('status', 'Import excel di sheet ' . $indexSheet . ' berhasil');
    }

    public function downloadImportTemplate()
    {
        $path = base_path('/template/mutasi_d.xls');
        ;

        return response()->download($path, 'mutasi_d.xls', [
            'Content-Type' => 'text/xls',
        ]);
    }

    public function cetakBarcode()
    {
        $user = auth()->user();
        $regionId = $user->region_id;

        // Fetch the import class for MutasiD from the database
        $mapping = RegionImportMappings::where('region_id', $regionId)->first();

        if (!$mapping || !$mapping->data_no) {
            return redirect('mutasi_ds')->with('error', 'Invalid region ID or no import class defined for MutasiD!');
        }

        $modelClass = 'App\\Models\\MutasiD' . $mapping->data_no;

        if (!class_exists($modelClass)) {
            return redirect('mutasi_ds')->with('error', 'The specified import class does not exist.');
        }

        $dataproduk = $modelClass::all()->groupBy('no_kertas');

        $pdf = PDF::loadView('mutasi_ds.barcode', compact('dataproduk'));
        $pdf->setPaper('a4', 'portrait');
        $pdf->setOption(['dpi' => 150, 'defaultFont' => 'serif']);
        return $pdf->stream('mutasi_wtb.pdf');
    }

    public function cetakQR()
    {
        $user = auth()->user();
        $regionId = $user->region_id;

        // Fetch the import class for MutasiD from the database
        $mapping = RegionImportMappings::where('region_id', $regionId)->first();

        if (!$mapping || !$mapping->data_no) {
            return redirect('mutasi_ds')->with('error', 'Invalid region ID or no import class defined for MutasiD!');
        }

        $modelClass = 'App\\Models\\MutasiD' . $mapping->data_no;

        if (!class_exists($modelClass)) {
            return redirect('mutasi_ds')->with('error', 'The specified import class does not exist.');
        }

        $dataproduk = $modelClass::all()->groupBy('no_kertas')->map(function ($items) {
            // Menghapus duplikasi berdasarkan kolom tag_bin_location
            return $items->unique('tag_bin_location');
        })->toArray();
        
        $pdf = PDF::loadView('mutasi_ds.qr', compact('dataproduk'));
        $pdf->setPaper('a4', 'portrait');
        $pdf->setOption(['dpi' => 150, 'defaultFont' => 'serif']);
        return $pdf->stream('mutasi_wtb1.pdf');
    }
}
