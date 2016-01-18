<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Recruit extends MY_Controller {
	function __construct(){
        parent::__construct();
        
        $this->Comdata['parent'] = get_columns_parent(8);
    }

	public function index($cid = 36){
	 	$vdata = array();
	 	$vdata = $this->Comdata;

	 	$this->load->model('recruit_model','rec');
	 	$vdata['rec_list'] = $this->rec->get_all(array('cid' => $cid));
	 	$this->load->view('Recruit',$vdata);
	 }

}

