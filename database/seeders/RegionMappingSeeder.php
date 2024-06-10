<?php

namespace Database\Seeders;

use App\Models\RegionImportMappings;
use Illuminate\Database\Seeder;

class RegionMappingSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        $region_mappings = [
            ['region_id' => 'Reg001', 'data_no' => '1'],
            ['region_id' => 'Reg002', 'data_no' => '2'],
            ['region_id' => 'Reg003', 'data_no' => '3'],
            ['region_id' => 'Reg004', 'data_no' => '4'],
            ['region_id' => 'Reg005', 'data_no' => '5'],
            ['region_id' => 'Reg006', 'data_no' => '6'],
            ['region_id' => 'Reg007', 'data_no' => '7'],
        ];

        foreach ($region_mappings as $region_mapping) {
            RegionImportMappings::create($region_mapping);
        }
    }
}