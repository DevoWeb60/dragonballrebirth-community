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
        Schema::create('rewards', function (Blueprint $table) {
            $table->id();
            $table->string("name", 255);
            $table->unsignedBigInteger('character_id')->nullable();
            $table->foreign('character_id')->references('id')->on('characters');
            $table->unsignedBigInteger('object_id')->nullable();
            $table->foreign('object_id')->references('id')->on('object_items');
            $table->integer('quantity_object')->nullable();
            $table->unsignedBigInteger('caps_id')->nullable();
            $table->foreign('caps_id')->references('id')->on('caps');
            $table->integer('quantity_caps')->nullable();
            $table->integer('zenis')->nullable();
            $table->integer('experience')->nullable();
            $table->boolean('skin')->nullable();
            $table->unsignedBigInteger('rewards_character_id')->nullable();
            $table->foreign('rewards_character_id')->references('id')->on('characters');
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
        Schema::dropIfExists('rewards');
    }
};
