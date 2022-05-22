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
        Schema::create('caps', function (Blueprint $table) {
            $table->id();
            $table->string('name', 255);
            $table->integer('min_level');
            $table->integer('price')->nullable();
            $table->unsignedBigInteger('caps_scarecities_id');
            $table->foreign('caps_scarecities_id')->references('id')->on('caps_scarecities');
            $table->integer('strength')->nullable();
            $table->integer('vitality')->nullable();
            $table->integer('defense')->nullable();
            $table->integer('energy')->nullable();
            $table->string('bonus', 50);
            $table->string('malus', 50);
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
        Schema::dropIfExists('caps');
    }
};
