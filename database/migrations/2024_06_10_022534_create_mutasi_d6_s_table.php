<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateMutasiD6STable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('mutasi_d6s', function (Blueprint $table) {
            $table->id();
            $table->string('no_kertas')->nullable();
            $table->text('site_id')->nullable();
            $table->text('site_name')->nullable();
            $table->string('tag_bin_location')->nullable();
            $table->text('area')->nullable();
            $table->string('zone')->nullable();
            $table->text('status')->nullable();
            $table->text('cek')->nullable();
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
        Schema::dropIfExists('mutasi_d6s');
    }
}
