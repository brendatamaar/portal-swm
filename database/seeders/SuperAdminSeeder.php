<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use App\Models\User;
use Illuminate\Support\Facades\Hash;

class SuperAdminSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // Creating Super Admin User
        $superAdmin = User::create([
            'name' => 'Superadmin', 
            'email' => 'superadmin@gmail.com',
            'password' => bcrypt('123456')
        ]);
        $superAdmin->assignRole('Super Admin');

        // Creating Admin User
        $admin = User::create([
            'name' => 'Admin', 
            'email' => 'admin@gmail.com',
            'password' => bcrypt('123456')
        ]);
        $admin->assignRole('Admin');

        $worker = User::create([
            'name' => 'Worker', 
            'email' => 'worker@gmail.com',
            'password' => bcrypt('123456')
        ]);
        $worker->assignRole('Worker');

        $viewer = User::create([
            'name' => 'Viewer', 
            'email' => 'viewer@gmail.com',
            'password' => bcrypt('123456')
        ]);
        $viewer->assignRole('Viewer');
    }
}
