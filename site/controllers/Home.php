<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Home extends MY_Controller{
	function __construct(){
        parent::__construct();        

    }

	 public function index(){
	 	$vdata = array();
	 	$vdata = $this->Comdata;

	 	$this->load->view('home',$vdata);
	 }

}
