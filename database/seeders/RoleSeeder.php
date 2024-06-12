<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Role;

class RoleSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Role::create(['name' => 'SWM']);
        $reg_manager = Role::create(['name' => 'Regional Manager']);
        $store_manager = Role::create(['name' => 'Store Manager']);
        $mod = Role::create(['name' => 'MOD']);
        $leader = Role::create(['name' => 'Leader']);

        $reg_manager->givePermissionTo([
            'view-dashboard',
            'view-data-report',
            'view-cycle-count',
            'view-sampling',
            'upload-sampling',
            'progress-sampling',
            'view-crumen'
        ]);

        $store_manager->givePermissionTo([
            'view-dashboard',
            'view-data-report',
            'view-cycle-count',
            'progress-cycle-count',
            'upload-cycle-count',
            'view-sampling',
            'upload-sampling',
            'progress-sampling',
            'view-crumen',
            'upload-crumen',
            'delete-crumen',
            'export-crumen',
        ]);

        $mod->givePermissionTo([
            'view-dashboard',
            'view-data-report',
            'view-cycle-count',
            'progress-cycle-count',
            'upload-cycle-count',
            'view-sampling',
            'upload-sampling',
            'progress-sampling',
            'view-crumen',
            'upload-crumen',
            'delete-crumen',
            'export-crumen',
        ]);

        $leader->givePermissionTo([
            'view-dashboard',
            'view-data-report',
            'view-cycle-count',
            'progress-cycle-count',
            'upload-cycle-count',
            'view-sampling',
            'upload-sampling',
            'progress-sampling',
            'view-crumen',
            'upload-crumen',
            'delete-crumen',
            'export-crumen',
        ]);
    }
}
