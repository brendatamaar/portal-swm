<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSampling5sTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('sampling5s', function (Blueprint $table) {
            $table->id();
            $table->string('site_id');
            $table->string('category')->nullable();
            $table->string('item_code')->nullable();
            $table->string('barcode_item')->nullable();
            $table->string('item_name')->nullable();
            $table->string('uom')->nullable();
            $table->string('location')->nullable();
            $table->string('loc_detail')->nullable();
            $table->integer('qty_sistem_wms')->nullable();
            $table->integer('qty_available_wms')->nullable();
            $table->integer('qty_allocated_wms')->nullable();
            $table->integer('qty_nav')->nullable();
            $table->integer('qty_fisik')->nullable();
            $table->integer('selisih_fisik_wms')->nullable();
            $table->string('hit_miss_fisik_wms')->nullable();
            $table->integer('total_qty_item_wms')->nullable();
            $table->integer('selisih_wms_nav')->nullable();
            $table->string('hit_miss_wms_nav')->nullable();
            $table->string('note')->nullable();
            $table->string('upload_date')->nullable();
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
        Schema::dropIfExists('sampling5s');
    }
}
