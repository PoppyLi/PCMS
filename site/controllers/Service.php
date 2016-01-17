<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Service extends MY_Controller {
	function __construct(){
        parent::__construct();
        
        $this->Comdata['parent'] = get_columns_parent(5);
    }

	 public function index($cid = 25){
	 	$vdata = array();
	 	$vdata = $this->Comdata;
	 	$vdata['content'] = $this->page->get_one(array('cid' => $cid));
	 	$this->load->view('Service',$vdata);
	 }
}

