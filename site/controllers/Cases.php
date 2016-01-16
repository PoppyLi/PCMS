<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Cases extends MY_Controller {
	function __construct(){
        parent::__construct();

        $this->Comdata['parent'] = get_columns_parent(4);
        $this->load->model('Cases_model','cases');
    }

	public function index($cid = 18,$page = 1){
	 	$vdata = array();
	 	$vdata = $this->Comdata;
	 	$limit = 9;
	 	$order = array('sort_id' => 'desc');
	 	$where = array('cid' => $cid,'audit' => 1,'status' => 1);
	 	$all_num = $this->cases->get_count_all($where);
	 	$vdata['pages'] = $this->_pages(site_url('cases/index/'.$cid.'/'),$limit,$where,$all_num,4);
	 	$vdata['ari_list'] = $this->cases->get_list($limit,$limit*($page-1),$order,$where);
	 	$this->load->view('Cases',$vdata);
	}

}

