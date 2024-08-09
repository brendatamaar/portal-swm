<?php

namespace App\Imports;

use App\Models\MutasiTagBin1;
use App\Models\MutasiTagBin2;
use App\Models\MutasiTagBin3;
use App\Models\MutasiTagBin4;
use App\Models\MutasiTagBin5;
use App\Models\MutasiTagBin6;
use App\Models\MutasiTagBin7;
use App\Models\RegionImportMappings;
use App\Models\Stores;
use Illuminate\Support\Facades\Hash;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithStartRow;
use Maatwebsite\Excel\Concerns\WithMultipleSheets;

class MutasiTagBinImport implements ToModel, WithStartRow, WithMultipleSheets
{
    private $index_sheet = 0;
    private $site_id;
    public function __construct($index_sheet, $site_id)
    {
        $this->index_sheet = $index_sheet - 1;
        $this->site_id = $site_id;
    }
    /**
     * @param array $row
     *
     * @return \Illuminate\Database\Eloquent\Model|null
     */
    public function model(array $row)
    {

        $region = Stores::where('site_id', $row[0])->first()->region_id;

        $mapping = RegionImportMappings::where('region_id', $region)->first();
        $importClass = 'App\\Models\\MutasiTagBin' . $mapping->data_no;

        return new $importClass([
            'site_id' => $row[0],
            'site_name' => $row[1],
            'tag_bin_location' => $row[2],
            'area' => $row[3],
            'zone' => $row[4],
            'status' => $row[5]
        ]);
    }

    public function sheets(): array
    {
        return [
            $this->index_sheet => $this,
        ];
    }

    public function startRow(): int
    {
        return 2; // Skip the first row
    }
}
