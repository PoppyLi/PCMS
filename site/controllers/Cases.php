<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Cases extends MY_Controller {
	function __construct(){
        parent::__construct();
        
    }

	public function index(){
	 	$vdata = array();
	 	$vdata = $this->get_site();

	 	$this->load->view('Case',$vdata);
	}

}

