<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
 * Class Help extends CI_Controller
 * 反馈信息
 * @author
 */
class recruit_apply extends CRUD_Controller
{
	public function _vdata(&$vdata)
	{
		$vdata['title'] = '在线应聘';
	}

	protected $rules = array(
		"edit" => array(
			array(
				"field" => "timeline_answer",
				"label" => "回复时间",
				"rules" => "trim|strtotime"
			)
		)
	);

	protected function _index_orders(){
		return array('sort_id'=>'desc');
	}

	public function exl() {
		// $this->load->model('account_model','maccount');
		// $this->load->model('consumer_model','mconsumer');
  //       $data = $this->maccount->get_all(array());

        $sqlss="SELECT * FROM boc_recruit_apply ORDER BY boc_recruit_apply.id ASC";

		$data=$this->db->query($sqlss)->result_array();

		$output = "<HTML>";
		$output .= "<HEAD>";
		$output .= "<META http-equiv=Content-Type content=\"text/html; charset=utf-8\">";
		$output .= "</HEAD>";
		$output .= "<BODY>";
		$output .= "<TABLE BORDER=1>";
		$output .= "<tr><td>项目ID</td><td>项目申请人</td><td>项目类型</td><td>联系方式</td><td>邮箱</td><td>申请备注</td><td>项目下载</td><td>提交时间</td></tr>";
		foreach ($data as $v) {
			
			$output .= "<tr><td>".$v['sort_id']."</td><td>".$v['name']."</td><td>".$v['edu']."</td><td>".$v['tel']."</td><td>".$v['email']."</td><td>".$v['language']."</td><td>";
			$files=explode(',', $v['file']);

			foreach ($files as $va) {
				$con_s=empty($va)?"":"下载";
				$output .="<div><a href='".UPLOAD_URL.'resume/'.$va."'>".$con_s."</a></div> ";
			}

			$output.="</td><td>".date('Y-m-d H:i:s',$v['timeline'])."</td></tr>";
			$add="";
		}//var_dump($output);die;
		$output .= "</TABLE>";
		$output .= "</BODY>";
		$output .= "</HTML>";

		$filename = "项目数据列表.xls";

		header("Pragma: public");
		header('Expires: '.gmdate('D, d M Y H:i:s').' GMT');
		header("Cache-Control: must-revalidate, post-check=0, pre-check=0");
		header("Cache-Control: private",false);
		header("Content-Type: application/vnd.ms-excel");
		header("Content-Disposition: attachment; filename=".$filename."");
		header("Expires: 0");
		echo $output;

	}

	//下载大文件
	function download($id,$index){
		// echo $id;
		// echo $index;

		$data = $this->model->get_one($id);

		$path_all = explode(",",$data['file']);

		$name_all = explode(",",$data['sourcename']);

		$file_addr = UPLOAD_PATH.'resume/'.$path_all[$index];

		$file_name = $name_all[$index];


		/*var_dump($file_addr);
		var_dump($file_name);*/


		download_bigfiles($file_addr,$file_name);


	}
	public function exl_mobile() {
		// $this->load->model('account_model','maccount');
		// $this->load->model('consumer_model','mconsumer');
  //       $data = $this->maccount->get_all(array());

        $sqlss="SELECT * FROM boc_feedmobile ORDER BY boc_feedmobile.id ASC";

		$data=$this->db->query($sqlss)->result_array();

		$output = "<HTML>";
		$output .= "<HEAD>";
		$output .= "<META http-equiv=Content-Type content=\"text/html; charset=utf-8\">";
		$output .= "</HEAD>";
		$output .= "<BODY>";
		$output .= "<TABLE BORDER=1>";
		$output .= "<tr><td>项目类型</td><td>项目名称</td><td>负责人</td><td>联系电话</td><td>备注</td><td>提交文件</td><td>提交时间</td><td>问题1</td><td>问题2</td><td>问题3</td><td>问题4</td><td>问题5</td><td>问题6</td><td>问题7</td><td>问题8</td><td>问题9</td></tr>";
		foreach ($data as $v) {
			$type=$v['type']==1?"天使投资":"其他投资";
			$output .= "<tr><td>".$type."</td><td>".$v['title']."</td><td>".$v['username']."</td><td>".$v['tel']."</td><td>".$v['remark']."</td><td><a href='".UPLOAD_URL."resume/".$v['userfile']."'>".$v['filename']."</a></td><td>".date('Y-m-d H:i:s',$v['timeline'])."</td><td>".$v['content1']."</td><td>".$v['content2']."</td><td>".$v['content3']."</td><td>".$v['content4']."</td><td>".$v['content5']."</td><td>".$v['content6']."</td><td>".$v['content7']."</td><td>".$v['content8']."</td><td>".$v['content9']."</td></tr>";
			$add="";
		}
		$output .= "</TABLE>";
		$output .= "</BODY>";
		$output .= "</HTML>";

		$filename = "项目数据列表.xls";

		header("Pragma: public");
		header('Expires: '.gmdate('D, d M Y H:i:s').' GMT');
		header("Cache-Control: must-revalidate, post-check=0, pre-check=0");
		header("Cache-Control: private",false);
		header("Content-Type: application/vnd.ms-excel");
		header("Content-Disposition: attachment; filename=".$filename."");
		header("Expires: 0");
		echo $output;

	}


}