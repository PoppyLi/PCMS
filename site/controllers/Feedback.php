<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Feedback extends MY_Controller {

	function __construct(){
        parent::__construct();
        
        $this->Comdata['parent'] = get_columns_parent(9);
    }

	 public function index(){
	 	$vdata = array();
	 	$vdata = $this->Comdata;
	 	$data = $this->input->post();
	 	unset($data['captchas']);
	 	unset($data['Submit']);
    	if($this->form_validation->run('feedback')) {
    		$this->load->model('feedback_model');
			$this->feedback_model->create($data);
			goto_message("感谢您的反馈，我们会尽快处理！",'feedback');
		}
	 	$this->load->view('Feedback',$vdata);
	 }

}

