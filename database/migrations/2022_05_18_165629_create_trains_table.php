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
        Schema::create('trains', function (Blueprint $table) {
            $table->id();
            $table->string('name', 255);
            $table->string('icon', 255)->nullable();
            $table->unsignedBigInteger('map_case_id');
            $table->foreign('map_case_id')->references('id')->on('map_cases');
            $table->unsignedBigInteger('planet_id');
            $table->foreign('planet_id')->references('id')->on('planets');
            $table->string('gain', 255);
            $table->string('required_level', 255);
            $table->integer('step_id');
            $table->unsignedBigInteger('duration_id');
            $table->foreign('duration_id')->references('id')->on('waiting_durations');
            $table->string('specificity', 255);
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
        Schema::dropIfExists('trains');
    }
};
