<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\DB;

class CreateEventsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('events', function (Blueprint $table) {
            $table->increments('id');
            $table->string('title');
            $table->string('image');
            $table->dateTime('start_day');
            $table->dateTime('end_day');
            $table->string('online_event');
            $table->boolean('is_active')->default(1)->comment('1:actived 0:unactived');
            $table->softDeletes();
            $table->timestamps();
        });

        // $dataEvent = [
        //     'tile' => '',

        // ];

        // DB::table('events')->insert($dataEvent);
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('events');
    }
}
