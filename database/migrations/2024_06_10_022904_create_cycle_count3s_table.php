<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCycleCount3sTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('cycle_count3s', function (Blueprint $table) {
            $table->id();
            $table->string('site_id');
            $table->string('category')->nullable();
            $table->string('item_code')->nullable();
            $table->string('barcode_item')->nullable();
            $table->string('item_name')->nullable();
            $table->string('uom')->nullable();
            $table->string('location')->nullable();
            $table->string('lottable_2')->nullable();
            $table->integer('qty_sistem_wms')->nullable();
            $table->integer('qty_fisik')->nullable();
            $table->string('hit_miss')->nullable();
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
        Schema::dropIfExists('cycle_count3s');
    }
}
