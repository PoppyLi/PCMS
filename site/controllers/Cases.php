<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Cases extends MY_Controller {

	 public function index(){
	 	$vdata = array();
	 	$this->load->view('Case',$vdata);
	 }

}

