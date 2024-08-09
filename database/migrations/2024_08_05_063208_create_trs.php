<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTrs extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('trs', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('form_id');
            $table->string('nota_penjualan');
            $table->dateTime('promise_date');
            $table->timestamps();

            $table->foreign('form_id')->references('id')->on('form_trs');
            
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('trs');
    }
}
