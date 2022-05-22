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
        Schema::create('adventure_modes', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('story_id');
            $table->foreign('story_id')->references('id')->on('stories');
            $table->unsignedBigInteger('character_id');
            $table->foreign('character_id')->references('id')->on('characters');
            $table->unsignedBigInteger('enemy_id')->nullable();
            $table->foreign('enemy_id')->references('id')->on('characters');
            $table->integer('enemy_level')->nullable();
            $table->integer('enemy_health')->nullable();
            $table->unsignedBigInteger('map_case_id');
            $table->foreign('map_case_id')->references('id')->on('map_cases');
            $table->unsignedBigInteger('planet_id');
            $table->foreign('planet_id')->references('id')->on('planets');
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
        Schema::dropIfExists('adventure_modes');
    }
};
