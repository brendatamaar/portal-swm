<?php

namespace App\Imports;

use App\Models\MutasiTagBin5;
use Illuminate\Support\Facades\Hash;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithStartRow;
use Maatwebsite\Excel\Concerns\WithMultipleSheets;

class MutasiTagBin5Import implements ToModel, WithStartRow, WithMultipleSheets
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
        if ($row[0] == $this->site_id) {
            return new MutasiTagBin5([
                'site_id' => $row[0],
                'site_name' => $row[1],
                'tag_bin_location' => $row[2],
                'area' => $row[3],
                'zone' => $row[4],
                'status' => $row[5]
            ]);
        }
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
