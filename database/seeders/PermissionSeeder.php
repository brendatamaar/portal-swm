<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Spatie\Permission\Models\Permission;

class PermissionSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $permissions = [
            'view-role',
            'create-role',
            'update-role',
            'delete-role',
            'view-user',
            'create-user',
            'update-user',
            'delete-user',
            'view-store',
            'create-store',
            'update-store',
            'delete-store',
            'view-region',
            'create-region',
            'update-region',
            'delete-region',
            'view-dashboard',
            'view-data-report',
            'upload-data-report',
            'delete-data-report',
            'update-data-report',
            'view-cycle-count',
            'upload-cycle-count',
            'delete-cycle-count',
            'update-cycle-count',
            'progress-cycle-count',
            'view-sampling',
            'upload-sampling',
            'delete-sampling',
            'update-sampling',
            'progress-sampling',
            'view-crumen',
            'upload-crumen',
            'delete-crumen',
            'export-crumen',
            'view-history',
            'export-history',
            'create-letyouknow',
            'edit-letyouknow',
            'delete-letyouknow',
            'upload-learning',
            'edit-learning',
            'delete-learning',
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
        ];

        // Looping and Inserting Array's Permissions into Permission Table
        foreach ($permissions as $permission) {
            Permission::create(['name' => $permission]);
        }
    }
}
