<?php
namespace App\Factory;

class User {

	public static function run($port = 'user'){
		switch ($port) {

			case 'level':
				return new \App\Services\User\LevelService();
				break;
				
			case 'user':
			default:
				return new \App\Services\User\IndexService();
		}
	}

}
