<?php
namespace App\Services\User;
use App\Services\BaseService;

use App\Models\User\UserLevel;

/**
 * 等级
 */
class LevelService extends BaseService
{
	function __construct()
	{
		parent::__construct();
		//初始化等级
		$count =  UserLevel::count();
		if($count < 1){
			$level = new UserLevel();
			$level->uniacid = $this->uniacid;
			$level->title = '游客';
			$level->level = 0;
			$level->status = 1;
			$level->discount = 100;
			$level->created_at = date('Y-m-d H:i:s');
			$level->updated_at = date('Y-m-d H:i:s');
			$level->save();
		}
	}
	public function getLevel(){
		$level = UserLevel::get();
		dump($level);
	}

	/**
	 * 获取等级 k-v
	 */
	public function getlevelPluck(){
		return UserLevel::orderBy('level','asc')->get()->pluck('title', 'id');
	}

}
