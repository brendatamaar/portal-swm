<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateFormTrs extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {

        Schema::create('form_trs', function (Blueprint $table) {
            $table->id();
            $table->string('no_document');
            $table->string('no_receipt');
            $table->string('transfer_from');
            $table->string('transfer_to');
            $table->text('status_form');
            $table->unsignedBigInteger('created_by');
            $table->unsignedBigInteger('approved_by')->nullable();
            $table->timestamps();

            $table->foreign('transfer_from')->references('site_id')->on('stores');
            $table->foreign('transfer_to')->references('site_id')->on('stores');
            $table->foreign('created_by')->references('id')->on('users');
            $table->foreign('approved_by')->references('id')->on('users');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('form_trs');
    }
}
