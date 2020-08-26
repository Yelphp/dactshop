<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateUserLevelTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('user_level', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('uniacid')->default('0');
            $table->string('title')->default('')->comment('名称');
            $table->integer('level')->unique()->default('0')->comment('等级');
            $table->tinyInteger('status')->default('1')->comment('状态 1正常  2禁用');
            $table->integer('discount')->default('100')->comment('折扣');
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
        Schema::dropIfExists('user_level');
    }
}