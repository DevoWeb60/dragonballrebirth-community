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
        Schema::create('stories', function (Blueprint $table) {
            $table->id();
            $table->string('story_name', 255);
            $table->string('thumbnail', 255);
            $table->unsignedBigInteger('main_story')->nullable();
            $table->foreign('main_story')->references('id')->on('main_stories');
            $table->integer('story_number');
            $table->unsignedBigInteger('story_unlock')->nullable();
            $table->foreign('story_unlock')->references('id')->on('stories');
            $table->integer('step_unlock')->nullable();
            $table->string('custom_requirement')->nullable();
            $table->integer('visible')->nullable();
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
        Schema::dropIfExists('stories');
    }
};
