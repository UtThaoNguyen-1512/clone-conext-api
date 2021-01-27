<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('users', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('email')->unique();
            $table->string('gender');
            $table->string('avatar');
            $table->string('introduction');
            $table->string('seek');
            //$table->bigInteger('place_id')->unsigned();
            $table->unsignedBigInteger('place_id');
            $table->foreign('place_id')->references('id')->on('places');
            // $table->unsignedBigInteger('country_id');
            // $table->foreign('country_id')->references('id')->on('countries');
            // $table->unsignedBigInteger('expertise_id');
            // $table->foreign('expertise_id')->references('id')->on('expertises');
            // $table->unsignedBigInteger('business_type_id');
            // $table->foreign('business_type_id')->references('id')->on('business_types');
            // $table->unsignedBigInteger('work_place_id');
            // $table->foreign('work_place_id')->references('id')->on('work_places');
            // $table->unsignedBigInteger('roles');
            // $table->timestamp('email_verified_at')->nullable();
            // $table->string('password');
            // $table->rememberToken();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('users');
    }
}
