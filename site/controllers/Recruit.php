<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Recruit extends MY_Controller {
	function __construct(){
        parent::__construct();

        $this->load->model('recruit_model','rec');
        $this->Comdata['parent'] = get_columns_parent(8);
    }

	public function index($cid = 36){
	 	$vdata = array();
	 	$vdata = $this->Comdata;

	 	$vdata['rec_list'] = $this->rec->get_all(array('cid' => $cid,'audit' => 1));
	 	$this->load->view('Recruit',$vdata);
	 }

	 public function apply($cid=0,$id=0){
	 	if($cid==0 || $id==0) goto_message('参数非法！');

	 	$vdata = array();
	 	$vdata = $this->Comdata;
	 	$data = $this->input->post();
	 	unset($data['captchas']);
	 	unset($data['Submit']);
	 	$data['ip'] = $this->input->ip_address();
    	if($this->form_validation->run('recruit')) {
    		$this->load->model('recruit_apply_model','app');
			$this->app->create($data);
			goto_message("感谢您的应聘！",'recruit');
		}

	 	$vdata['rec_art'] = $this->rec->get_one(array('cid' => $cid,'id' => $id,'audit' => 1));
	 	$this->load->view('Recruit_apply',$vdata);
	 }
}

