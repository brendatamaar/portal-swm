<?php

namespace App\Http\Controllers;

use App\Models\MutasiD1;
use App\Models\MutasiD2;
use App\Models\MutasiD3;
use App\Models\MutasiD4;
use App\Models\MutasiD5;
use App\Models\MutasiD6;
use App\Models\MutasiD7;
use App\Imports\MutasiDImport;
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
        $user = auth()->user();
        $regionId = $user->region_id;
        $siteId = $user->site_id;

        // Fetch the import class for MutasiTagBin from the database
        $mapping = RegionImportMappings::where('region_id', $regionId)->first();

        if (!$mapping || !$mapping->data_no) {
            // Get instances of all models
            $models = [
                MutasiD1::query(),
                MutasiD2::query(),
                MutasiD3::query(),
                MutasiD4::query(),
                MutasiD5::query(),
                MutasiD6::query(),
                MutasiD7::query(),
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
            $mutasiDs = $mergedQuery->orderBy('id', 'DESC')->paginate(10);
            return view('mutasi_ds.index', [
                'mutasi_ds' =>  $mutasiDs
            ]);
        }

        $modelClass = 'App\\Models\\MutasiTagBin' . $mapping->data_no;
        // Fetch data based on the determined model
        $mutasiDs = $modelClass::where('site_id', $siteId)->orderBy('id', 'DESC')->paginate(10);

        return view('mutasi_ds.index', [
            'mutasi_ds' =>  $mutasiDs
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
        $siteId = $user->site_id;

        // Fetch the import class for MutasiD from the database
        $mapping = RegionImportMappings::where('region_id', $regionId)->first();

        if (!$mapping || !$mapping->data_no) {
            MutasiD1::truncate();
            MutasiD2::truncate();
            MutasiD3::truncate();
            MutasiD4::truncate();
            MutasiD5::truncate();
            MutasiD6::truncate();
            MutasiD7::truncate();

            return redirect()->route('mutasi_ds.index')
                ->with('error', 'Semua data berhasil dihapus.');
        }

        $modelClass = 'App\\Models\\MutasiD' . $mapping->data_no;

        if (!class_exists($modelClass)) {
            return redirect('mutasi_ds')->with('error', 'The specified import class does not exist.');
        }

        $modelClass::where('site_id', $siteId)->delete();
        return redirect()->route('mutasi_ds.index')
            ->with('error', 'Semua data berhasil dihapus.');
    }

    public function importExcel(Request $request)
    {
        $indexSheet = $request->input('sheet');
        $user = auth()->user();
        $regionId = $user->region_id;
        $siteId = $user->site_id;

        // Fetch the import class for MutasiD from the database
        $mapping = RegionImportMappings::where('region_id', $regionId)->first();

        if (!$mapping || !$mapping->data_no) {
            try {
                Excel::import(new MutasiDImport($indexSheet, $siteId), $request->file('file'));
            } catch (\Exception $e) {
                return redirect('mutasi_ds')->with('error', 'Error! Pastikan sheet dan template excel sudah sesuai. ');
            }

            return redirect('mutasi_ds')->with('status', 'Import excel di sheet ' . $indexSheet . ' berhasil');
        }

        $importClass = 'App\\Imports\\MutasiD' . $mapping->data_no . 'Import';

        try {
            Excel::import(new $importClass($indexSheet, $siteId), $request->file('file'));
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
