<?php

namespace App\Models\User;

use Dcat\Admin\Traits\HasDateTimeFormatter;

use Illuminate\Database\Eloquent\Model;

class UserLevel extends Model
{
	use HasDateTimeFormatter;
    protected $table = 'user_level';
    
}
