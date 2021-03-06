<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
 * Class Links extends Modules_Controller 
 * @author era
 * 外链
 */
class Links extends Modules_Controller{ 

	protected $rules = array(
		"create" => array(
			array(
				'field'   => 'title', 
				'label'   => '标题', 
				'rules'   => 'trim|required'
			),
			array(
				'field'   => 'link', 
				'label'   => '链接', 
				'rules'   => 'trim|is_url'
			)
		),
		"edit" => array(
			array(
				'field'   => 'title', 
				'label'   => '标题', 
				'rules'   => 'trim|required'
			),
			array(
				'field'   => 'link', 
				'label'   => '链接', 
				'rules'   => 'trim|required|is_url'
			)
		),
		"show" => array(
			array(
				'field'   => 'id', 
				'label'   => '标识', 
				'rules'   => 'trim|required|numeric'
			),
			array(
				'field'   => 'show', 
				'label'   => '状态', 
				'rules'   => 'trim|required|numeric'
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
			$vdata['ps'] = $this->mupload->get_one($vdata['it']['photo']);
		}
	}

	protected function _create_data(){
		$form=$this->input->post();
		$form['timeline'] = time();
		return $form;
	}

}

