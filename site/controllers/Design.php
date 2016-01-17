<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Design extends MY_Controller {
	function __construct(){
        parent::__construct();

        $this->Comdata['parent'] = get_columns_parent(7);
    }

	 public function index($cid = 32){
	 	$vdata = array();
	 	$vdata = $this->Comdata;
	 	$vdata['content'] = $this->page->get_one(array('cid' => $cid));
	 	$this->load->view('Design',$vdata);
	 }

}

