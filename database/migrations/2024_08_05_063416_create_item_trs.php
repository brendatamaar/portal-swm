<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateItemTrs extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('item_trs', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('tr_id');
            $table->string('item_no')->nullable();
            $table->string('item_desc')->nullable();
            $table->string('item_code')->nullable();
            $table->string('uom')->nullable();
            $table->integer('qty')->nullable();
            $table->timestamps();

            $table->foreign('tr_id')->references('id')->on('trs');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('item_trs');
    }
}
