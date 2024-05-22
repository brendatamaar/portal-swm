<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use App\Models\Users;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\DB;

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
        $superAdmin = Users::create([
            'nik' => $this->generateUniqueNIK(16),
            'name' => 'Superadmin',
            'username' => 'superadmin',
            'email' => 'superadmin@gmail.com',
            'position_id' => 1,
            'password' => '123456',
            'site_id' => '00001',
            'region_id' => 1
        ]);
        $superAdmin->assignRole('Super Admin');

        // Creating Admin User
        $admin = Users::create([
            'nik' => $this->generateUniqueNIK(16),
            'name' => 'Admin',
            'username' => 'admin',
            'email' => 'admin@gmail.com',
            'password' => '123456',
            'position_id' => 1,
            'site_id' => '00001',
            'region_id' => 1
        ]);
        $admin->assignRole('Admin');

        $worker = Users::create([
            'nik' => $this->generateUniqueNIK(16),
            'name' => 'Worker',
            'username' => 'worker',
            'email' => 'worker@gmail.com',
            'password' => '123456',
            'position_id' => 2,
            'site_id' => '00001',
            'region_id' => 1
        ]);
        $worker->assignRole('Worker');

        $viewer = Users::create([
            'nik' => $this->generateUniqueNIK(16),
            'name' => 'Viewer',
            'username' => 'viewer',
            'email' => 'viewer@gmail.com',
            'password' => '123456',
            'position_id' => 2,
            'site_id' => '00001',
            'region_id' => 1
        ]);
        $viewer->assignRole('Viewer');
    }

    /**
     * Generate a random 16-digit number as a string.
     *
     * @param int $length
     * @return string
     */

    private function generateUniqueNIK($length)
    {
        do {
            $digits = $this->generateNIK($length);
        } while ($this->numberExists($digits));

        return $digits;
    }

    private function generateNIK($length)
    {
        $digits = '';

        for ($i = 0; $i < $length; $i++) {
            $digits .= mt_rand(0, 9);
        }

        return $digits;
    }

    private function numberExists($number)
    {
        return DB::table('users')
            ->where('nik', $number)
            ->exists();
    }
}
