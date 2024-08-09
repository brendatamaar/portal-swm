<?php

namespace App\Http\Controllers;

use App\Models\MutasiTagBin1;
use App\Models\MutasiTagBin2;
use App\Models\MutasiTagBin3;
use App\Models\MutasiTagBin4;
use App\Models\MutasiTagBin5;
use App\Models\MutasiTagBin6;
use App\Models\MutasiTagBin7;
use App\Models\RegionImportMappings;
use Illuminate\Http\Request;
use App\Imports\MutasiTagBinImport;
use Maatwebsite\Excel\Facades\Excel;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\RedirectResponse;
use Barryvdh\DomPDF\Facade\Pdf as PDF;

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

        $user = auth()->user();
        $regionId = $user->region_id;
        $siteId = $user->site_id;

        // Fetch the import class for MutasiTagBin from the database
        $mapping = RegionImportMappings::where('region_id', $regionId)->first();

        if (!$mapping || !$mapping->data_no) {
            // Get instances of all models
            $models = [
                MutasiTagBin1::query(),
                MutasiTagBin2::query(),
                MutasiTagBin3::query(),
                MutasiTagBin4::query(),
                MutasiTagBin5::query(),
                MutasiTagBin6::query(),
                MutasiTagBin7::query(),
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
            $mutasiTagBins = $mergedQuery->orderBy('id', 'DESC')->paginate(10);
            return view('mutasi_tag_bins.index', [
                'mutasi_tag_bins' => $mutasiTagBins
            ]);
        }

        $modelClass = 'App\\Models\\MutasiTagBin' . $mapping->data_no;
        // Fetch data based on the determined model and siteid
        $mutasiTagBins = $modelClass::where('site_id', $siteId)->orderBy('id', 'DESC')->paginate(10);

        return view('mutasi_tag_bins.index', [
            'mutasi_tag_bins' => $mutasiTagBins
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

    /**
     * Remove all data.
     */
    public function deleteAll(): RedirectResponse
    {
        $user = auth()->user();

        $regionId = $user->region_id;
        $siteId = $user->site_id;

        // Fetch the import class for MutasiTagBin from the database
        $mapping = RegionImportMappings::where('region_id', $regionId)->first();

        if (!$mapping || !$mapping->data_no) {
            MutasiTagBin1::truncate();
            MutasiTagBin2::truncate();
            MutasiTagBin3::truncate();
            MutasiTagBin4::truncate();
            MutasiTagBin5::truncate();
            MutasiTagBin6::truncate();
            MutasiTagBin7::truncate();

            return redirect()->route('mutasi_tag_bins.index')
                ->with('error', 'Semua data berhasil dihapus.');
        }

        if (!$mapping || !$mapping->data_no) {
            return redirect('mutasi_tag_bins')->with('error', 'Invalid region ID or no import class defined for MutasiTagBin!');
        }

        $modelClass = 'App\\Models\\MutasiTagBin' . $mapping->data_no;

        if (!class_exists($modelClass)) {
            return redirect('mutasi_tag_bins')->with('error', 'The specified import class does not exist.');
        }

        $modelClass::where('site_id', $siteId)->delete();
        return redirect()->route('mutasi_tag_bins.index')
            ->with('error', 'Semua data berhasil dihapus.');

    }

    public function importExcel(Request $request)
    {
        $indexSheet = $request->input('sheet');
        $user = auth()->user();
        $regionId = $user->region_id;
        $siteId = $user->site_id;

        // Fetch the import class for MutasiTagBin from the database
        $mapping = RegionImportMappings::where('region_id', $regionId)->first();

        if (!$mapping || !$mapping->data_no) {
            try {
                Excel::import(new MutasiTagBinImport($indexSheet, $siteId), $request->file('file'));
            } catch (\Exception $e) {
                return redirect('mutasi_tag_bins')->with('error', 'Error! Pastikan sheet dan template excel sudah sesuai. ');
            }

            return redirect('mutasi_tag_bins')->with('status', 'Import excel di sheet ' . $indexSheet . ' berhasil');
        }

        $importClass = 'App\\Imports\\MutasiTagBin' . $mapping->data_no . 'Import';

        try {
            Excel::import(new $importClass($indexSheet, $siteId), $request->file('file'));
        } catch (\Exception $e) {
            return redirect('mutasi_tag_bins')->with('error', 'Error! Pastikan sheet dan template excel sudah sesuai. ');
        }

        return redirect('mutasi_tag_bins')->with('status', 'Import excel di sheet ' . $indexSheet . ' berhasil');
    }

    public function downloadImportTemplate()
    {
        $path = base_path('/template/crystal_report.xls');
        ;

        return response()->download($path, 'crystal_report.xls', [
            'Content-Type' => 'text/xls',
        ]);
    }


    public function cetakBarcode()
    {
        $user = auth()->user();
        $regionId = $user->region_id;

        // Fetch the import class for MutasiTagBin from the database
        $mapping = RegionImportMappings::where('region_id', $regionId)->first();

        if (!$mapping || !$mapping->data_no) {
            return redirect('mutasi_tag_bins')->with('error', 'Invalid region ID or no import class defined for MutasiTagBin!');
        }

        $modelClass = 'App\\Models\\MutasiTagBin' . $mapping->data_no;

        if (!class_exists($modelClass)) {
            return redirect('mutasi_tag_bins')->with('error', 'The specified import class does not exist.');
        }

        // Ambil semua data produk dari database
        $dataproduk = $modelClass::all()->filter(function ($produk) {
            // Ambil karakter pertama dari tag_bin_location
            $firstChar = substr($produk->tag_bin_location, 0, 1);
            // Hanya ambil data yang berawalan 'C' atau 'W'
            return $firstChar === 'C' || $firstChar === 'W';
        });

        // Cek apakah data kosong
        if ($dataproduk->isEmpty()) {
            return redirect('mutasi_tag_bins')->with('error', 'Tidak ada lokasi Topper/Warehouse. ');
        }

        // Konversi data ke array
        $dataproduk = $dataproduk->toArray();

        $no = 1;
        $pdf = PDF::loadView('mutasi_tag_bins.barcode', compact('dataproduk', 'no'));
        $pdf->setPaper('a4', 'portrait');
        $pdf->setOption(['dpi' => 150, 'defaultFont' => 'sans-serif']);
        return $pdf->stream('mutasi_tag_bins.pdf');
    }

    public function cetakQR()
    {
        $user = auth()->user();
        $regionId = $user->region_id;

        // Fetch the import class for MutasiTagBin from the database
        $mapping = RegionImportMappings::where('region_id', $regionId)->first();

        if (!$mapping || !$mapping->data_no) {
            return redirect('mutasi_tag_bins')->with('error', 'Invalid region ID or no import class defined for MutasiTagBin!');
        }

        $modelClass = 'App\\Models\\MutasiTagBin' . $mapping->data_no;

        if (!class_exists($modelClass)) {
            return redirect('mutasi_tag_bins')->with('error', 'The specified import class does not exist.');
        }

        // Ambil semua data produk dari database
        $dataproduk = $modelClass::all()->filter(function ($produk) {
            // Ambil karakter pertama dari tag_bin_location
            return substr($produk->tag_bin_location, 0, 1) === 'D';
        });

        // Cek apakah data kosong
        if ($dataproduk->isEmpty()) {
            return redirect('mutasi_tag_bins')->with('error', 'Tidak ada lokasi Dipslay. ');
        }

        // Konversi data ke array
        $dataproduk = $dataproduk->toArray();

        $no = 1;
        $pdf = PDF::loadView('mutasi_tag_bins.qr', compact('dataproduk', 'no'));
        $pdf->setPaper('a4', 'portrait');
        $pdf->setOption(['dpi' => 150, 'defaultFont' => 'sans-serif']);
        return $pdf->stream('mutasi_tag_bins.pdf');
    }
}
