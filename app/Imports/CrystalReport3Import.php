<?php

namespace App\Imports;

use App\Models\CrystalReport3;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithStartRow;
use Maatwebsite\Excel\Concerns\WithMultipleSheets;

class CrystalReport3Import implements ToModel, WithStartRow, WithMultipleSheets
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
            return new CrystalReport3([
                'site_id' => $row[0],
                'site_name' => $row[1],
                'location' => $row[2],
                'location_type' => $row[3],
                'category' => $row[4],
                'item_no' => $row[5],
                'item_name' => $row[6],
                'barcode' => $row[7],
                'uom' => $row[8]
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
