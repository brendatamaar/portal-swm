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
            ['reg_id' => 'Reg000', 'reg_name' => 'HO'],
            ['reg_id' => 'Reg001','reg_name' => 'Region 1'],
            ['reg_id' => 'Reg002','reg_name' => 'Region 2'],
            ['reg_id' => 'Reg003','reg_name' => 'Region 3'],
            ['reg_id' => 'Reg004','reg_name' => 'Region 4'],
            ['reg_id' => 'Reg005','reg_name' => 'Region 5'],
            ['reg_id' => 'Reg006','reg_name' => 'Region 6'],
            ['reg_id' => 'Reg007','reg_name' => 'Region 7'],
        ];

        foreach ($regions as $region) {
            Regions::create($region);
        }

        // Seed stores
        $stores = [
            [
                'site_id' => '00001',
                'site_name' => 'HO',
                'region_id' => 'Reg000'
            ],
            [
                'site_id' => '10003',
                'site_name' => 'MITRA10 CIBUBUR',
                'region_id' => 'Reg003'
            ],
            [
                'site_id' => '10004',
                'site_name' => 'MITRA10 DAAN MOGOT',
                'region_id' => 'Reg006'
            ],
            [
                'site_id' => '10005',
                'site_name' => 'MITRA10 PERCETAKAN NEGARA',
                'region_id' => 'Reg005'
            ],
            [
                'site_id' => '10006',
                'site_name' => 'MITRA10 PASAR BARU',
                'region_id' => 'Reg004'
            ],
            [
                'site_id' => '10007',
                'site_name' => 'MITRA10 BINTARO',
                'region_id' => 'Reg004'
            ],
            [
                'site_id' => '10009',
                'site_name' => 'MITRA10 CINERE',
                'region_id' => 'Reg005'
            ],
            [
                'site_id' => '10040',
                'site_name' => 'MITRA10 FATMAWATI',
                'region_id' => 'Reg004'
            ],
            [
                'site_id' => '10042',
                'site_name' => 'MITRA10 PANTAI INDAH KAPUK',
                'region_id' => 'Reg006'
            ],
            [
                'site_id' => '10044',
                'site_name' => 'MITRA10 KOTA HARAPAN INDAH',
                'region_id' => 'Reg003'
            ],
        ];

        foreach ($stores as $store) {
            Stores::create($store);
        }
    }
}
