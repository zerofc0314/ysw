<?php

/**
 * 模型管理器
 * 用于控制模型的创建和产生。可以无限制的进行模型的创建和使用
 * @author 阿夏 2015-11-15 860003286@qq.com
 * 
 */

namespace Admin\Controller;

use Common\Controller\AdminbaseController;

class SiteModelController extends AdminbaseController {

    public $template = array();

    public function _initialize() {
        parent::_initialize();
    }

    public function index() {
        $data = D('model')->select();
        $this->assign('data', $data);
        $this->display();
    }

    /**
     * 禁用模型
     */
    public function model_stop() {
        $modelid = I('modelid', '0', 'int');
        if ($modelid > 0) {
            $model_status = D('model')->where(array('modelid' => $modelid))->getField('disabled');
            if ($model_status != NULL) {
                $result = D('model')->where(array('modelid' => $modelid))->save(array('disabled' => ($model_status == 0 ? 1 : 0)));
                exit((string) $result);
            }
        }
        exit((string) 0);
    }

    /**
     * 模型删除
     */
    public function model_delete() {
        $modelid = I('modelid', '0', 'int');
    }

    /**
     * 模型编辑
     */
    public function edit() {
        
    }

    /**
     * 增加模型
     */
    public function add() {
        $this->loadTemplate();
        if (IS_POST) {
            $data = I('post.');
            $data['siteid'] = 1; //不进行分站
            $data['category_template'] = I('post.category_template');
            $data['list_template'] = I('post.list_template');
            $data['show_template'] = I('post.show_template');
            $data['admin_list_template'] = I('post.admin_list_template');
            if (D('Model')->create($data)) {
                D('Model')->data($data)->add($data);
                
            }
            exit('插入数据完成');
        } else {
            $this->loadTemplate();
        }
        $this->display();
    }

    private function loadTemplate() {
        $template_array = \Admin\Common\base::base()->getFile('./tpl_admin/simpleboot/Admin/template');
        foreach ($template_array as $value) {
            // var_dump($value);
            if (strpos($value, 'admin_list') !== FALSE) {
                $this->template['admin_list'][] = $value;
            } elseif (strpos($value, 'list') !== FALSE) {
                $this->template['list'][] = $value;
            } elseif (strpos($value, 'index') !== FALSE) {
                $this->template['index'][] = $value;
            } elseif (strpos($value, 'arc') !== FALSE) {
                $this->template['arc'][] = $value;
            } elseif (strpos($value, 'submit') !== FALSE) {
                $this->template['submit'][] = $value;
            }
        }
        $this->assign('temp', $this->template);
    }

}
