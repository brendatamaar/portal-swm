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
        Role::create(['name' => 'Super Admin']);
        $admin = Role::create(['name' => 'Admin']);
        $worker = Role::create(['name' => 'Worker']);
        $viewer = Role::create(['name' => 'Viewer']);

        $admin->givePermissionTo([
            'create-user',
            'edit-user',
            'delete-user'
        ]);

        $worker->givePermissionTo([
            'view-sampling'
        ]);

        $viewer->givePermissionTo([
            'view-chart',
            'view-export'
        ]);
    }
}
