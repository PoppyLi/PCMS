<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Home extends MY_Controller{
	function __construct(){
        parent::__construct();        

        $this->load->model('Cases_model','cases');
    }

	 public function index(){
	 	$vdata = array();
	 	$vdata = $this->Comdata;	 	

	 	$vdata['art1'] = $this->get_flag(18);
	 	$vdata['art2'] = $this->get_flag(19);
	 	$vdata['art3'] = $this->get_flag(20);

	 	$vdata['cases'] = $this->cases->get_list('5','0','sort_id',array('flag' => 1,'audit' => 1),'id,cid,title,photo');
	 	$this->load->view('home',$vdata);
	 }

	 public function get_flag($cid){
	 	return $this->art->get_list('5','0','sort_id',array('cid' => $cid,'flag' => 1,'audit' => 1),'id,cid,title,photo');
	 }
}

