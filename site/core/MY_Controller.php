<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class MY_Controller extends CI_Controller{
	function __construct(){
		parent::__construct();
	}

	public function get_site(){
		$arr = array();		
        $this->load->model('configs_model','cfg');
        $this->load->model('gallery_model','gal');
        $this->load->model('page_model','page');

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
