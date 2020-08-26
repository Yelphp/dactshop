<?php

namespace App\Admin\Controllers\User;

use App\Admin\Repositories\User\UserLevel;
use Dcat\Admin\Form;
use Dcat\Admin\Grid;
use Dcat\Admin\Show;
use Dcat\Admin\Controllers\AdminController;

class UserLevelController extends AdminController
{

    protected $status_arr = [0 => '禁用' , 1 => '开启'];
    protected $status_arr_label = [0 => 'danger' , 1 => 'success'];
    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {

        return Grid::make(new UserLevel(), function (Grid $grid) {

            $grid->quickSearch('title')->auto(false)->placeholder('搜索会员名称');

            $grid->column('id')->sortable();
            $grid->column('title')->editable();
            $grid->column('level');
            $grid->column('status')->using($this->status_arr)->label($this->status_arr_label);
            $grid->column('discount');
            $grid->column('created_at');
            $grid->column('updated_at')->sortable();
            
            //数据选择器
            $grid->filter(function (Grid\Filter $filter) {
                $filter->equal('id');
                $filter->equal('level','等级');
                $filter->like('title','名称');
        
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
        return Show::make($id, new UserLevel(), function (Show $show) {
            $show->field('id');
            $show->field('title');
            $show->field('level');
            $show->field('status')->using($this->status_arr)->label();
            $show->field('discount')->as(function($res){
                return $res.'%';
            });
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
        return Form::make(new UserLevel(), function (Form $form) {
            $form->display('id');

            $form->number('level')->rules(function ($form) {
                    // 如果不是编辑状态，则添加字段唯一验证
                    if (!$id = $form->model()->id) {
                        return 'required|unique:user_level,level';
                    }
                },[
                'unique' => '该等级已被占用'
            ])->min(0)->max(100)->help('数组越大，等级越高');

            $form->text('title')->required();

            $form->switch('status')->default(1)->help('关闭则对应用户无法登陆');
            $form->number('discount')->default(100)->min(1)->max(100)->required()->help('折扣（%）');
        
            $form->display('created_at');
            $form->display('updated_at');
        });
    }
}
