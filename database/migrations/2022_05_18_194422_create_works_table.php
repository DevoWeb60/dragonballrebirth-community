<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('works', function (Blueprint $table) {
            $table->id();
            $table->string('name',255);
            $table->integer('unlock_step');
            $table->string('utils', 255);
            $table->unsignedBigInteger('map_case_id');
            $table->foreign('map_case_id')->references('id')->on('map_cases');
            $table->unsignedBigInteger('planet_id');
            $table->foreign('planet_id')->references('id')->on('planets');
            $table->unsignedBigInteger('object_id');
            $table->foreign('object_id')->references('id')->on('object_items');
            $table->unsignedBigInteger('waiting_duration_id');
            $table->foreign('waiting_duration_id')->references('id')->on('waiting_durations');
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
        Schema::dropIfExists('works');
    }
};
