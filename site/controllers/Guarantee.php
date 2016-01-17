<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Guarantee extends MY_Controller {
	function __construct(){
        parent::__construct();

        $this->Comdata['parent'] = get_columns_parent(6);
    }

	 public function index($cid = 28){
	 	$vdata = array();
	 	$vdata = $this->Comdata;
	 	$vdata['content'] = $this->page->get_one(array('cid' => $cid));
	 	$this->load->view('Guarantee',$vdata);
	 }
}

