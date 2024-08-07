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
        $swm = Users::create([
            'nik' => $this->generateUniqueNIK(16),
            'name' => 'SWM User',
            'username' => 'swm_user',
            'email' => 'swm@gmail.com',
            'password' => '123456',
            'site_id' => '00001',
            'region_id' => 'Reg000'
        ]);
        $swm->assignRole('SWM');

        // Creating Admin User
        $ic = Users::create([
            'nik' => $this->generateUniqueNIK(16),
            'name' => 'IC User 1',
            'username' => 'ic_user1',
            'email' => 'ic1@gmail.com',
            'password' => '123456',
            'site_id' => '10003',
            'region_id' => 'Reg003'
        ]);
        $ic->assignRole('IC');

        $reg_manager = Users::create([
            'nik' => $this->generateUniqueNIK(16),
            'name' => 'Regional Manager User 1',
            'username' => 'reg_manager_user1',
            'email' => 'reg_manager1@gmail.com',
            'password' => '123456',
            'site_id' => '10003',
            'region_id' => 'Reg003'
        ]);
        $reg_manager->assignRole('Regional Manager');

        // Creating Admin User
        $reg_manager2 = Users::create([
            'nik' => $this->generateUniqueNIK(16),
            'name' => 'Regional Manager User 2',
            'username' => 'reg_manager_user2',
            'email' => 'reg_manager2@gmail.com',
            'password' => '123456',
            'site_id' => '10004',
            'region_id' => 'Reg006'
        ]);
        $reg_manager2->assignRole('Regional Manager');

        $store_manager = Users::create([
            'nik' => $this->generateUniqueNIK(16),
            'name' => 'Store Manager User',
            'username' => 'store_manager_user',
            'email' => 'store_manager@gmail.com',
            'password' => '123456',
            'site_id' => '00001',
            'region_id' => 'Reg001'
        ]);
        $store_manager->assignRole('Store Manager');

        $mod = Users::create([
            'nik' => $this->generateUniqueNIK(16),
            'name' => 'MOD User',
            'username' => 'mod_user',
            'email' => 'mod@gmail.com',
            'password' => '123456',
            'site_id' => '00001',
            'region_id' => 'Reg001'
        ]);
        $mod->assignRole('MOD');

        $leader = Users::create([
            'nik' => $this->generateUniqueNIK(16),
            'name' => 'Leader User',
            'username' => 'leader_user',
            'email' => 'leader@gmail.com',
            'password' => '123456',
            'site_id' => '00001',
            'region_id' => 'Reg001'
        ]);
        $leader->assignRole('Leader');
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
