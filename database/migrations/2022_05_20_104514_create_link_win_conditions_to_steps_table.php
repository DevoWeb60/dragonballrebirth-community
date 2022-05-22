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
        Schema::create('link_win_conditions_to_steps', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('conditions_id');
            $table->foreign('conditions_id')->references('id')->on('win_conditions');
            $table->unsignedBigInteger('step_number');
            $table->foreign('step_number')->references('id')->on('adventure_modes');
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
        Schema::dropIfExists('link_win_conditions_to_steps');
    }
};
