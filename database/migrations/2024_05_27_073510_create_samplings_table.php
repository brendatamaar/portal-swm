<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSamplingsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('samplings', function (Blueprint $table) {
            $table->id();
            $table->string('category');
            $table->string('item_code');
            $table->string('barcode_item');
            $table->string('item_name');
            $table->string('uom');
            $table->string('location');
            $table->string('loc_detail');
            $table->integer('qty_sistem_wms');
            $table->integer('qty_available_wms');
            $table->integer('qty_allocated_wms');
            $table->integer('qty_nav');
            $table->integer('qty_fisik');
            $table->integer('selisih_fisik_wms');
            $table->string('hit_miss_fisik_wms');
            $table->integer('total_qty_item_wms');
            $table->integer('selisih_wms_nav');
            $table->string('hit_miss_wms_nav');
            $table->string('note');
            $table->string('upload_date');
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
        Schema::dropIfExists('samplings');
    }
}
