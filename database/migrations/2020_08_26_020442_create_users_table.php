<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('users', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('uniacid')->default('0');
            $table->string('openid')->nullable()->comment('Openid');
            $table->string('name')->default('')->comment('姓名');
            $table->string('nickname')->default('')->comment('昵称');
            $table->string('password')->nullable()->comment('密码');
            $table->string('avatar')->nullable()->comment('头像');
            $table->string('phone')->nullable()->comment('电话');
            $table->string('cardnum')->nullable()->comment('身份证');
            $table->string('birthday')->nullable()->comment('生日');
            $table->integer('pid')->default('0')->comment('父级id');
            $table->text('fids')->nullable()->comment('关系链');
            $table->integer('level')->comment('等级');
            $table->decimal('consume')->default('0')->comment('消费');
            $table->decimal('money')->default('0')->comment('金额');
            $table->integer('integral')->default('0')->comment('积分');
            $table->string('province')->nullable()->default('')->comment('省');
            $table->string('city')->nullable()->default('')->comment('市');
            $table->string('country')->nullable()->default('')->comment('区');
            $table->string('area')->nullable()->default('')->comment('镇、街道');
            $table->string('address')->nullable()->default('')->comment('详细地址');
            $table->timestamp('bindtime')->nullable()->comment('绑定时间');
            $table->decimal('commission')->default('0')->comment('佣金');
            $table->decimal('sumcommission')->default('0')->comment('累计佣金');
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
        Schema::dropIfExists('users');
    }
}
