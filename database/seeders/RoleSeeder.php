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
        $ic = Role::create(['name' => 'IC']);

        $reg_manager->givePermissionTo([
            'view-dashboard',
            'view-data-report',
            'view-cycle-count',
            'view-sampling',
            'upload-sampling',
            'progress-sampling',
            'view-crumen',
            'view-form_trs',
            'create-form_trs',
            'update-form_trs',
            'delete-form_trs',
            'view-video',
            'create-video',
            'update-video',
            'delete-video',
            'view-items',
            'create-items',
            'update-items',
            'delete-items',
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
            'view-form_trs',
            'create-form_trs',
            'update-form_trs',
            'delete-form_trs',
            'view-video',
            'create-video',
            'update-video',
            'delete-video',
            'view-items',
            'create-items',
            'update-items',
            'delete-items',
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
            'view-form_trs',
            'create-form_trs',
            'update-form_trs',
            'delete-form_trs',
            'view-video',
            'create-video',
            'update-video',
            'delete-video',
            'view-items',
            'create-items',
            'update-items',
            'delete-items',
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
            'view-form_trs',
            'create-form_trs',
            'update-form_trs',
            'delete-form_trs',
            'approve-form_trs',
            'view-video',
            'create-video',
            'update-video',
            'delete-video',
            'view-items',
            'create-items',
            'update-items',
            'delete-items',
        ]);

        $ic->givePermissionTo([
            'view-dashboard',
            'view-data-report',
            'view-cycle-count',
            'progress-cycle-count',
            'upload-cycle-count',
            'view-form_trs',
            'approve-form_trs',
            'view-video',
            'create-video',
            'update-video',
            'delete-video',
            'view-items',
            'create-items',
            'update-items',
            'delete-items',
        ]);
    }
}
