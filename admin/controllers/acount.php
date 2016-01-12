<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/**
 * Class Article extends CI_Controller 
 * @author 
 * 信息类
 */
class Acount extends CRUD_Controller
{
	protected $rules = array(
		"rule" => array(
			array(
				"field" => "title",
				"label" => "标题",
				"rules" => "trim|required|min_length[1]"
			)
			,array(
				"field" => "timeline",
				"label" => "时间",
				"rules" => "trim|strtotime"
			)
			,array(
                "field" => "content",
                "label" => "内容",
                "rules" => "trim"
                // link_create tag 生成
            )
		)
	);

	function __construct(){
        parent::__construct();
        $this->load->model('Article_model', 'marticle');


    }

    public function _vdata(&$vdata)
	{
		$vdata['title'] = '用户管理';
        $vdata['path'] = 'acount/search';

		 $where = array('cid'=>23, 'audit'=>1,'ccid'=>'');
		$pro = $this->marticle->get_all($where);
		$vdata['pro']=$pro;
	}

	protected function _index_orders(){
		return array('sort_id'=>'desc');
	}


	public function _create_data()
	{
		$form=$this->input->post();
		

		$form['cslist']=implode(',',$form['cslist']);
		return $form;
	}

	public function _edit_data()
	{
		$form=$this->input->post();

		$form['cslist']=implode(',',$form['cslist']);

		return $form;
	}

}

