<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Decoration extends MY_Controller {
	function __construct(){
        parent::__construct();
        
        $this->Comdata['parent'] = get_columns_parent(3);
    }

	 public function index($cid = 18,$page = 1)
	 {
	 	$vdata = array();
	 	$vdata = $this->Comdata;
	 	$limit = 10;
	 	$order = array('sort_id' => 'desc');
	 	$where = array('cid' => $cid,'audit' => 1,'status' => 1);
	 	$all_num = $this->art->get_count_all($where);
	 	$vdata['pages'] = $this->_pages(site_url('decoration/index/'.$cid.'/'),$limit,$where,$all_num,4);
	 	$vdata['ari_list'] = $this->art->get_list($limit,$limit*($page-1),$order,$where);
	 	$this->load->view('Decoration',$vdata);
	 }

	 public function article($id = 0){
	 	if(empty($id)) return false;

	 	$vdata = array();
	 	$vdata = $this->Comdata;
	 	$where = array('id' => $id,'audit' => 1,'status' => 1);
	 	$vdata['article'] = $this->art->get_one_pn($where);
	 	$this->art->update(array('click' => $vdata['article']['click']+1),array('id' => $id));
	 	$this->load->view('article',$vdata);
	 }

}

