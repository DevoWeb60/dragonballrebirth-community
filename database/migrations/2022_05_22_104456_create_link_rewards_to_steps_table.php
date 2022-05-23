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
        Schema::create('link_rewards_to_steps', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('rewards_id');
            $table->foreign('rewards_id')->references('id')->on('rewards');
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
        Schema::dropIfExists('link_rewards_to_steps');
    }
};
