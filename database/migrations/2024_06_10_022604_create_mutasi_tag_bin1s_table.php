<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateMutasiTagBin1sTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('mutasi_tag_bin1s', function (Blueprint $table) {
            $table->id();
            $table->string('site_id');
            $table->text('site_name');
            $table->string('tag_bin_location');
            $table->text('area');
            $table->string('zone');
            $table->text('status');
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
        Schema::dropIfExists('mutasi_tag_bin1s');
    }
}
