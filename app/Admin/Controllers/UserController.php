<?php

namespace App\Admin\Controllers;

use App\Admin\Repositories\User;
use Dcat\Admin\Form;
use Dcat\Admin\Grid;
use Dcat\Admin\Show;
use Dcat\Admin\Controllers\AdminController;

use App\Factory\User as Fuser;

class UserController extends AdminController
{
    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        return Grid::make(new User(), function (Grid $grid) {
            $grid->fixColumns(8,0);

            //获取等级数据
            $level_arr = Fuser::run('level')->getlevelPluck()->toArray();

            $grid->column('id')->sortable();
            $grid->column('openid');
            $grid->column('name');
            $grid->column('nickname');
            // $grid->column('password');
            $grid->column('avatar')->image('',60);
            $grid->column('phone');
            $grid->column('level')->using($level_arr)->label()->sortable();
            $grid->column('cardnum');
            $grid->column('birthday');
            $grid->column('consume')->sortable();
            $grid->column('money')->sortable();
            $grid->column('integral')->sortable();
            $grid->column('province');
            $grid->column('city');
            $grid->column('country');
            $grid->column('area');
            $grid->column('address');
            $grid->column('bindtime');
            $grid->column('commission');
            $grid->column('sumcommission');
            $grid->column('created_at');
            $grid->column('updated_at')->sortable();
            
            //快捷搜索
            $grid->quickSearch('name','nickname','openid','phone')->auto(false);

            //筛选
            $grid->filter(function (Grid\Filter $filter) use ($level_arr ) {
                $filter->equal('id');
                $filter->equal('level')->select($level_arr);
                $filter->like('openid');
                $filter->like('name');
                $filter->like('nickname');
                $filter->like('phone');
            });

            // 导出
            $grid->export(Fuser::run()->exportfilter())->filename('会员列表')->rows(function (array $rows) use ($level_arr){
                foreach ($rows as $index => &$row) {
                    $row['level'] = isset($level_arr[$row['level']])?$level_arr[$row['level']]:$row['level'];
                }
                return $rows;
            });
        });
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     *
     * @return Show
     */
    protected function detail($id)
    {
        return Show::make($id, new User(), function (Show $show) {
            $level_arr = Fuser::run('level')->getlevelPluck()->toArray();

            $show->field('id');
            $show->field('openid');
            $show->field('name');
            $show->field('nickname');
            $show->field('password');
            $show->field('avatar')->image();
            $show->field('phone');
            $show->field('cardnum');
            $show->field('birthday');
            $show->field('pid');
            $show->field('fids');
            $show->field('level')->using($level_arr)->label();
            $show->field('consume');
            $show->field('money');
            $show->field('integral');
            $show->field('province');
            $show->field('city');
            $show->field('country');
            $show->field('area');
            $show->field('address');
            $show->field('bindtime');
            $show->field('commission');
            $show->field('sumcommission');
            $show->field('created_at');
            $show->field('updated_at');
        });
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        return Form::make(new User(), function (Form $form) {
            $level_arr = Fuser::run('level')->getlevelPluck()->toArray();

            $form->display('id');
            // $form->text('uniacid');
            $form->text('openid')->required();
            $form->text('name')->required();
            $form->text('nickname')->required();
            // $form->text('password');
            $form->image('avatar')->uniqueName();
            $form->mobile('phone');
            $form->text('cardnum');
            $form->text('birthday');
            // $form->text('pid');
            // $form->text('fids');
            $form->select('level')->options($level_arr)->required();
            // $form->text('consume');
            // $form->text('money');
            // $form->text('integral');
            $form->text('province');
            $form->text('city');
            $form->text('country');
            $form->text('area');
            $form->text('address');
            // $form->text('bindtime');
            // $form->text('commission');
            // $form->text('sumcommission');
        
            $form->display('created_at');
            $form->display('updated_at');
        });
    }
}
