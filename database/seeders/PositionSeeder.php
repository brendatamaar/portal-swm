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
            'position' => 'admin',
        ]);
        Positions::create([
            'position' => 'leader',
        ]);
        Positions::create([
            'position' => 'manager',
        ]);
        Positions::create([
            'position' => 'region manager',
        ]);
    }
}
