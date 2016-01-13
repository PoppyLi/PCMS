<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Company extends MY_Controller {

	 public function index()
	 {
	 	$vdata = array();
	 	$this->load->view('Company',$vdata);
	 }

}

