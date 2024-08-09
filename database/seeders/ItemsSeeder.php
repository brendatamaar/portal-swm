<?php

namespace Database\Seeders;

use App\Models\Items;
use Illuminate\Database\Seeder;

class ItemsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $items = [
            [
                'item_no' => '1',
                'item_desc' => 'Item 1',
                'uom' => 'PCS',
                'kategori' => 'Warehouse',
            ],
            [
                'item_no' => '2',
                'item_desc' => 'Item 2',
                'uom' => 'PCS',
                'kategori' => 'Topper',
            ],
            [
                'item_no' => '3',
                'item_desc' => 'Item 3',
                'uom' => 'PCS',
                'kategori' => 'Warehouse',
            ],
            [
                'item_no' => '4',
                'item_desc' => 'Item 4',
                'uom' => 'PCS',
                'kategori' => 'Warehouse',
            ],
            [
                'item_no' => '5',
                'item_desc' => 'Item 5',
                'uom' => 'PCS',
                'kategori' => 'Warehouse',
            ],
        ];

        foreach ($items as $item) {
            Items::create($item);
        }
    }
}
