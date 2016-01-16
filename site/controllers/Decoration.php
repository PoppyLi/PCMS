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
	 	
	 	$vdata['content'] = $this->art->get_all(array('cid' => $cid,'audit' => 1,'status' => 1),'id,cid,photo,title,content,timeline');
	 	$this->load->view('Decoration',$vdata);
	 }

	 public function article($id = 0){
	 	if(empty($id)) return false;

	 	$vdata = array();
	 	$vdata = $this->Comdata;

	 	$vdata['article'] = $this->art->get_one(array('id' => $id,'audit' => 1,'status' => 1),'title,content,timeline,click');

	 	$this->art->update(array('click' => $vdata['article']['click']+1),array('id' => $id));
	 	$this->load->view('article',$vdata);
	 }

}

