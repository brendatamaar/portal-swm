<?php

namespace App\Imports;

use App\Models\MutasiCW1;
use App\Models\MutasiCW2;
use App\Models\MutasiCW3;
use App\Models\MutasiCW4;
use App\Models\MutasiCW5;
use App\Models\MutasiCW6;
use App\Models\MutasiCW7;
use App\Models\RegionImportMappings;
use App\Models\Stores;
use Illuminate\Support\Facades\Hash;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithStartRow;
use Maatwebsite\Excel\Concerns\WithMultipleSheets;

class MutasiCWImport implements ToModel, WithStartRow, WithMultipleSheets
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
        $region = Stores::where('site_id', $row[1])->first()->region_id;

        $mapping = RegionImportMappings::where('region_id', $region)->first();
        $importClass = 'App\\Models\\MutasiCW' . $mapping->data_no;

        return new $importClass([
            'no_kertas' => $row[0],
            'site_id' => $row[1],
            'site_name' => $row[2],
            'tag_bin_location' => $row[3],
            'area' => $row[4],
            'zone' => $row[5],
            'status' => $row[6]
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
