<?php

namespace App\Admin\Repositories\User;

use App\Models\User\UserLevel as Model;
use Dcat\Admin\Repositories\EloquentRepository;

class UserLevel extends EloquentRepository
{
    /**
     * Model.
     *
     * @var string
     */
    protected $eloquentClass = Model::class;
}
