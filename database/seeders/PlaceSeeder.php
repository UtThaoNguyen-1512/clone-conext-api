<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class PlaceSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('places')->insert([
            [
                'name' => 'Ha Noi',
            ],

            [
                'name' => 'Da Nang',
            ],

            [
                'name' => 'TP Ho Chi Minh',
            ],
        ]);

    }
}
