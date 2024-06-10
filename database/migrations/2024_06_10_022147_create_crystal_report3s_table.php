<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCrystalReport3sTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('crystal_report3s', function (Blueprint $table) {
            $table->id();
            $table->string('site_id')->nullable();
            $table->text('site_name')->nullable();
            $table->text('location')->nullable();
            $table->string('location_type')->nullable();
            $table->text('category')->nullable();
            $table->string('item_no')->nullable();
            $table->text('item_name')->nullable();
            $table->text('barcode')->nullable();
            $table->text('uom')->nullable();
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
        Schema::dropIfExists('crystal_report3s');
    }
}
