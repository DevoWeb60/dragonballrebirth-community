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
        Schema::create('characters', function (Blueprint $table) {
            $table->id();
            $table->string('name', 255);
            $table->string('avatar', 255);
            $table->unsignedBigInteger('caps_id');
            $table->foreign('caps_id')->references('id')->on('caps');
            $table->integer('step_unlock');
            $table->unsignedBigInteger('story_id');
            $table->foreign('story_id')->references('id')->on('stories');
            $table->integer('ruby_cost')->nullable();
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
        Schema::dropIfExists('characters');
    }
};
