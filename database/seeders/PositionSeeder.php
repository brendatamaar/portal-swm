<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Positions;

class PositionSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Positions::create([
            'position' => 'Admin',
        ]);
        Positions::create([
            'position' => 'Leader',
        ]);
        Positions::create([
            'position' => 'Manager',
        ]);
        Positions::create([
            'position' => 'Region Manager',
        ]);
    }
}
