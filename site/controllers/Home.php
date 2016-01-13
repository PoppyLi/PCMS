<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Home extends MY_Controller {

	 public function index()
	 {
	 	$vdata = array();
	 	$this->load->view('home',$vdata);
	 }

}

