<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class MY_Controller extends CI_Controller{
	protected $Comdata = array();

	function __construct(){
		parent::__construct();

		$this->load->model('configs_model','cfg');
		$this->load->model('columns_model','cols');
        $this->load->model('gallery_model','gal');
        $this->load->model('page_model','page');
        $this->load->model('article_model','art');

        $this->Comdata = $this->get_site();
        $list = $this->cols->get_all(array('id !=' => 1,'parent_id !=' => 1),'id,parent_id,title,path,identify,mid',array('sort_id' => 'asc'),'columns');
	 	$this->Comdata['list'] = $this->cols_menu($list);
	}

	//获取菜单等级
	function cols_menu(&$vdata,$pid=0){
		$array = array();
	    foreach ($vdata as $k => $v) {
	    	if($vdata[$k]['parent_id'] == $pid){
	    		$vdata[$k]['child'] = $this->cols_menu($vdata,$vdata[$k]['id']);
	    		$array[] = $vdata[$k];
	    	}
	    }
	    return $array;
	}

	public function get_site(){
		$arr = array();	

	 	$arr['header'] =array(
	 		'title'=> $this->cfg->get_config('site','title_seo'),
	 		'tags'=> $this->cfg->get_config('site','tags'),
	 		'intro' => $this->cfg->get_config('site','intro')
	 	);

	 	$arr['banner'] = $this->gal->get_all(array('cid' => 10,'audit' => 1));

	 	$arr['sidebar'] = $this->page->get_one(array('cid' => 11));

		return $arr;
	}
	
}
