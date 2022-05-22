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
        Schema::create('object_items', function (Blueprint $table) {
            $table->id();
            $table->string('name', 255);
            $table->string('icon', 255);
            $table->text('description');
            $table->string('using', 255);
            $table->boolean('consumable');
            $table->unsignedBigInteger('object_duration_id');
            $table->foreign('object_duration_id')->references('id')->on('object_durations');
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
        //
    }
};
