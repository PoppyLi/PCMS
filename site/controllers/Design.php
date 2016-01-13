<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Design extends MY_Controller {

	 public function index()
	 {
	 	$vdata = array();
	 	$this->load->view('Design',$vdata);
	 }

}

