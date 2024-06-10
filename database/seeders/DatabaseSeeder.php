<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        $this->call([
            StoreSeeder::class,
            PermissionSeeder::class,
            RoleSeeder::class,
            SuperAdminSeeder::class,
            RegionMappingSeeder::class,
        ]);
    }
}