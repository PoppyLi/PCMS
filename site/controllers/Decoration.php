<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Decoration extends MY_Controller {
	function __construct(){
        parent::__construct();
        
        $this->Comdata['parent'] = get_columns_parent(3);
    }

	 public function index($cid = 18)
	 {
	 	$vdata = array();
	 	$vdata = $this->Comdata;
	 	
	 	$vdata['content'] = $this->art->get_all(array('cid' => $cid,'audit' => 1),'id,cid,title,timeline');
	 	$this->load->view('Decoration',$vdata);
	 }

}

