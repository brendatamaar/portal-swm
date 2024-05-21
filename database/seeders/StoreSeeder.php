<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Regions;
use App\Models\Stores;

class StoreSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {

        // Seed regions
        $regions = [
            ['name' => 'HO'],
            ['name' => 'Region 1'],
            ['name' => 'Region 2'],
            ['name' => 'Region 3'],
            ['name' => 'Region 4'],
        ];

        foreach ($regions as $region) {
            Regions::create($region);
        }

        // Seed stores
        $stores = [
            [
                'site_id' => '00001',
                'site_name' => 'HO',
                'region_id' => 1
            ],
            [
                'site_id' => '10044',
                'site_name' => 'Mitra10 Kota Harapan Indah',
                'region_id' => 2
            ],
            [
                'site_id' => '10003',
                'site_name' => 'Mitra10 Cibubur',
                'region_id' => 2
            ],
        ];

        foreach ($stores as $store) {
            Stores::create($store);
        }
    }
}
