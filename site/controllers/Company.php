<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Company extends MY_Controller {

	function __construct(){
        parent::__construct();
	 	
	 	$this->Comdata['parent'] = get_columns_parent(2); 
    }

	 public function index($cid = 13){
	 	$vdata = array();
	 	$vdata = $this->Comdata;
	 	$vdata['content'] = $this->page->get_one(array('cid' => $cid));
	 	$this->load->view('Company',$vdata);
	 }
}