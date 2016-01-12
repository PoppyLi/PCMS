<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/**
 * Class Article extends CI_Controller 
 * @author 
 * 信息类
 */
class Article extends Modules_Controller
{
	protected $rules = array(
		"rule" => array(
			array(
				"field" => "title",
				"label" => "标题",
				"rules" => "trim|required|min_length[3]"
			)
			,array(
				"field" => "timeline",
				"label" => "时间",
				"rules" => "trim|strtotime"
			)
			,array(
                "field" => "content",
                "label" => "内容",
                "rules" => "trim"
                // link_create tag 生成
            )
		)
	);

	public function __construct(){
		parent::__construct();
		$this->load->model('Upload_model','mupload');
		
	}

	public function _index_where(){
		$arr =array();
		if (isset($_GET['ctype'])) {
			$arr['ctype'] = $_GET['ctype'];
		}
		return $arr;
	}


	public function _vdata(&$vdata)
	{
		if (!array_key_exists('title', $vdata) or $vdata['title'] == $this->class) {
			$title = $this->mcol->get_one($this->cid,"title");
			$vdata['title'] = $title['title'].'aaaaaaaaaaa';
		}
		// 对图片文件进行处理
		if ($this->method == 'edit') {
			$vdata['ps'] = $this->mupload->get_one($vdata['it']['photo']);
			$vdata['title'] = $vdata['title'].' - '.$vdata['it']['title'];
		}
	}

}

