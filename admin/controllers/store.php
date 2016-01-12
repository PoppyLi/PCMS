<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/**
 * Class store extends Modules_Controller  
 * @author 
 */
class Store extends Modules_Controller{
    protected $rules = array(
        "rule" => array(
            array(
                "field" => "title",
                "label" => "标题",
                "rules" => "trim|required|min_length[6]"
            )
            ,array(
                "field" => "content",
                "label" => "内容",
                "rules" => "trim"
            )
            ,array(
                "field" => "addr",
                "label" => "addr",
                "rules" => "trim"
            )
            ,array(
                "field" => "tel",
                "label" => "tel",
                "rules" => "trim"
            )
            ,array(
                "field" => "fox",
                "label" => "营业时间",
                "rules" => "trim"
            )
            ,array(
                "field" => "pointlong",
                "label" => "经度",
                "rules" => "trim"
            )
            ,array(
                "field" => "pointlat",
                "label" => "纬度",
                "rules" => "trim"
            )
            ,array(
                "field" => "maptitle",
                "label" => "地图标题",
                "rules" => "trim"
            )
            ,array(
                "field" => "postcode",
                "label" => "城市",
                "rules" => "trim"
            )
        )
    );

    public function __construct(){
        parent::__construct();
        $this->load->model('Upload_model','mupload');
    }

    public function _vdata(&$vdata)
    {
        if ($this->method == 'edit') {
            $tmp = $this->mupload->get_in(explode(',', $vdata['it']['photo']));
            $keys = explode(',', $vdata['it']['photo']);
            $list = $keys;
            foreach ($tmp as $v) {
                foreach ($keys as $k => $kid) {
                    if ($kid == $v['id']) {
                        $list[$k] = $v;
                    }
                }
            }
            $vdata['ps'] = $list;
        }
    }

    public function _edit_data()
    {
        $form=$this->input->post();
        $form['timeline'] = time();
        return $form;
    }

    // 删除条目时删除文件
    protected function _rm_file($ids)
    {
        $fids = array() ;
        if (is_numeric($ids)) {
            $tmp = $this->model->get_one($ids,'photo');
            $fids = explode(',',$tmp['photo']);
        }else if(is_array($ids)){
            // 使用 字符串where时
            $tmp = $this->model->get_all("`id` in (".implode(',', $ids).")",'photo');
            foreach ($tmp as $key => $v) {
                $fids = array_merge($fids, explode(',',$v['photo']));
            }
        }
        // adminer funs helpers
        unlink_upload($fids);
    }
}
