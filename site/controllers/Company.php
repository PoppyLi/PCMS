<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Company extends MY_Controller {
	protected $Comdata = array();

	function __construct(){
        parent::__construct();
	 	//$this->Comdata = $this->get_site();
	 	$this->Comdata['parent'] = get_columns_parent(2); 
    }

	 public function index($cid = 13){
	 	$vdata = $this->Comdata;
	 	$vdata['content'] = $this->page->get_one(array('cid' => $cid));
	 	$this->load->view('Company',$vdata);
	 }
}