<?php

namespace App\Http\Controllers;

use App\Models\MutasiCW1;
use App\Models\MutasiCW2;
use App\Models\MutasiCW3;
use App\Models\MutasiCW4;
use App\Models\MutasiCW5;
use App\Models\MutasiCW6;
use App\Models\MutasiCW7;
use Illuminate\Http\Request;
use App\Models\RegionImportMappings;
use Maatwebsite\Excel\Facades\Excel;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\RedirectResponse;
use Barryvdh\DomPDF\Facade\Pdf as PDF;

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
        $user = auth()->user();
        $regionId = $user->region_id;
        $siteId = $user->site_id;
        
        // Fetch the import class for MutasiTagBin from the database
        $mapping = RegionImportMappings::where('region_id', $regionId)->first();

        if (!$mapping || !$mapping->data_no) {
            // Get instances of all models
            $models = [
                MutasiCW1::query(),
                MutasiCW2::query(),
                MutasiCW3::query(),
                MutasiCW4::query(),
                MutasiCW5::query(),
                MutasiCW6::query(),
                MutasiCW7::query(),
            ];

            // Merge all models using union
            $mergedQuery = null;
            foreach ($models as $model) {
                if ($mergedQuery === null) {
                    $mergedQuery = $model;
                } else {
                    $mergedQuery = $mergedQuery->union($model);
                }
            }

            // Paginate the merged result
            $mutasiCWs = $mergedQuery->orderBy('id', 'DESC')->paginate(10);
            return view('mutasi_cws.index', [
                'mutasi_cws' => $mutasiCWs
            ]);
        }

        $modelClass = 'App\\Models\\MutasiTagBin' . $mapping->data_no;
        // Fetch data based on the determined model
        $mutasiCWs = $modelClass::where('site_id', $siteId)->orderBy('id', 'DESC')->paginate(10);

        return view('mutasi_cws.index', [
            'mutasi_cws' => $mutasiCWs
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

    /**
     * Remove all data.
     */
    public function deleteAll(): RedirectResponse
    {
        $user = auth()->user();
        $regionId = $user->region_id;
        $siteId = $user->site_id;

        // Fetch the import class for MutasiCW from the database
        $mapping = RegionImportMappings::where('region_id', $regionId)->first();

        if (!$mapping || !$mapping->data_no) {
            return redirect('mutasi_cws')->with('error', 'Invalid region ID or no import class defined for MutasiCW!');
        }

        $modelClass = 'App\\Models\\MutasiCW' . $mapping->data_no;

        if (!class_exists($modelClass)) {
            return redirect('mutasi_cws')->with('error', 'The specified import class does not exist.');
        }

        $modelClass::where('site_id', $siteId)->delete();
        return redirect()->route('mutasi_cws.index')
            ->with('error', 'Semua data berhasil dihapus.');
    }

    public function importExcel(Request $request)
    {
        $indexSheet = $request->input('sheet');
        $user = auth()->user();
        $regionId = $user->region_id;
        $siteId = $user->site_id;

        // Fetch the import class for MutasiCW from the database
        $mapping = RegionImportMappings::where('region_id', $regionId)->first();

        if (!$mapping || !$mapping->data_no) {
            return redirect('mutasi_cws')->with('error', 'Invalid region ID or no import class defined for MutasiCW!');
        }

        $importClass = 'App\\Imports\\MutasiCW' . $mapping->data_no . 'Import';

        try {
            Excel::import(new $importClass($indexSheet, $siteId), $request->file('file'));
        } catch (\Exception $e) {
            return redirect('mutasi_cws')->with('error', 'Error! Pastikan sheet dan template excel sudah sesuai. ');
        }

        return redirect('mutasi_cws')->with('status', 'Import excel di sheet ' . $indexSheet . ' berhasil');
    }

    public function downloadImportTemplate()
    {
        $path = base_path('/template/mutasi_wtb.xls');
        ;

        return response()->download($path, 'mutasi_wtb.xls', [
            'Content-Type' => 'text/xls',
        ]);
    }

    public function cetakBarcode()
    {
        $user = auth()->user();
        $regionId = $user->region_id;

        // Fetch the import class for MutasiCW from the database
        $mapping = RegionImportMappings::where('region_id', $regionId)->first();

        if (!$mapping || !$mapping->data_no) {
            return redirect('mutasi_cws')->with('error', 'Invalid region ID or no import class defined for MutasiCW!');
        }

        $modelClass = 'App\\Models\\MutasiCW' . $mapping->data_no;

        if (!class_exists($modelClass)) {
            return redirect('mutasi_cws')->with('error', 'The specified import class does not exist.');
        }

        $dataproduk = $modelClass::all()->groupBy('no_kertas');

        $pdf = PDF::loadView('mutasi_cws.barcode', compact('dataproduk'));
        $pdf->setPaper('a4', 'portrait');
        $pdf->setOption(['dpi' => 150, 'defaultFont' => 'serif']);
        return $pdf->stream('mutasi_wtb.pdf');
    }

    public function cetakQR()
    {
        $user = auth()->user();
        $regionId = $user->region_id;

        // Fetch the import class for MutasiCW from the database
        $mapping = RegionImportMappings::where('region_id', $regionId)->first();

        if (!$mapping || !$mapping->data_no) {
            return redirect('mutasi_cws')->with('error', 'Invalid region ID or no import class defined for MutasiCW!');
        }

        $modelClass = 'App\\Models\\MutasiCW' . $mapping->data_no;

        if (!class_exists($modelClass)) {
            return redirect('mutasi_cws')->with('error', 'The specified import class does not exist.');
        }

        // Mengambil semua data dari model MutasiCW4 dan mengelompokkan berdasarkan no_kertas
        $dataproduk = $modelClass::all()->groupBy('no_kertas')->map(function ($items) {
            // Menghapus duplikasi berdasarkan kolom tag_bin_location
            return $items->unique('tag_bin_location');
        })->toArray();

        $pdf = PDF::loadView('mutasi_cws.qr', compact('dataproduk'));
        $pdf->setPaper('a4', 'portrait');
        $pdf->setOption(['dpi' => 150, 'defaultFont' => 'serif']);
        return $pdf->stream('mutasi_wtb1.pdf');
    }
}
