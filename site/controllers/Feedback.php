<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Feedback extends MY_Controller {
	protected $rules = array(
		"feedback" => array(
			array(
				"field" => "content",
				"label" => "内容",
				"rules" => "trim|required"
			)		
		)
	);
	function __construct(){
        parent::__construct();
        
        $this->Comdata['parent'] = get_columns_parent(9);
    }

	 public function index(){
	 	$vdata = array();
	 	$vdata = $this->Comdata;

	 	$this->form_validation->set_rules($this->rules['feedback']);
    	if ($this->form_validation->run() == FALSE) {
			if ($this->input->is_ajax_request() AND is_post()) {
				$vdata['status'] = 0;
				$vdata['msg'] = validation_errors();
				$this->output->set_content_type('application/json')->set_output(json_encode($vdata));
			}
		}else{
			//$data['timeline']=time();
			//$this->model->create($data);
			goto_message("感谢你的报名，我们会尽快联系你",'welcome');
		}
	 	$this->load->view('Feedback',$vdata);
	 }

}

