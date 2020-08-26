<?php
namespace App\Services\User;
use App\Services\BaseService;

/**
 * 用户
 */
class IndexService extends BaseService
{
	
	/**
	 * 用户列表导出字段
	 */
	public function exportfilter(){
		return [
			'id' => 'Id',
			'uniacid' => 'Uniacid',
	        'openid' => 'Openid',
	        'name' => '姓名',
	        'nickname' => '昵称',
	        'password' => '密码',
	        'avatar' => '头像',
	        'phone' => '电话',
	        'cardnum' => '身份证',
	        'birthday' => '生日',
	        'pid' => '父级id',
	        'fids' => '关系链',
	        'level' => '等级',
	        'consume' => '消费',
	        'money' => '金额',
	        'integral' => '积分',
	        'province' => '省',
	        'city' => '市',
	        'country' => '区',
	        'area' => '镇、街道',
	        'address' => '详细地址',
	        'bindtime' => '绑定时间',
	        'commission' => '佣金',
	        'sumcommission' => '累计佣金',
	        'created_at' => '创建时间',
	        'updated_at' => '更新时间',
		];
	}

}
