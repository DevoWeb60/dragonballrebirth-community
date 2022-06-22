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
        Schema::create('win_conditions', function (Blueprint $table) {
            $table->id();
            $table->string('name', 255);
            $table->string('custom_condition', 255)->nullable();
            $table->unsignedBigInteger('condition_base_id');
            $table->foreign('condition_base_id')->references('id')->on('win_condition_bases');
            $table->unsignedBigInteger('object_harvest')->nullable();
            $table->foreign('object_harvest')->references('id')->on('object_items');
            $table->integer('object_harvest_quantity')->nullable();
            $table->unsignedBigInteger('special_trains')->nullable();
            $table->foreign('special_trains')->references('id')->on('trains');
            $table->integer('any_trains_quantity')->nullable();
            $table->integer('spell_condition_number')->nullable();
            $table->boolean('critical_strike')->nullable();
            $table->boolean('dodge_attack')->nullable();
            $table->integer('min_damage')->nullable();
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
        Schema::dropIfExists('win_conditions');
    }
};
