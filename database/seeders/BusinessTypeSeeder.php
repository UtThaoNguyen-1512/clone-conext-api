<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class BusinessTypeSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('business_types')->insert(
            [
                ['name' => 'Incubator/Accelerator'],
                ['name' => 'Startup'],
                ['name' => 'Corporate'],
                ['name' => 'Investor/Venture'],
                ['name' => 'Startup eco-system'],
                ['name' => 'Government'],
                ['name' => 'Freelancer'],
                ['name' => 'Other'],
            ]
        );
    }
}
