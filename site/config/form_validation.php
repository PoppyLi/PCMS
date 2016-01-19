<?php
$config = array(
	"feedback" => array(
		array(
			"field" => "username",
			"label" => "联系人",
			"rules" => "trim|required"
		),
		array(
			"field" => "content",
			"label" => "反馈内容",
			"rules" => "trim|required"
		),
		array(
			"field" => "captchas",
			"label" => "验证码",
			"rules" => "trim|required|callback_captchas_verify"
		)	
	),
	"recruit" => array(
		array(
			"field" => "username",
			"label" => "姓名",
			"rules" => "trim|required"
		),
		array(
			"field" => "tel",
			"label" => "电话",
			"rules" => "trim|required"
		),
		array(
			"field" => "captchas",
			"label" => "验证码",
			"rules" => "trim|required|callback_captchas_verify"
		)	
	)
);

$config['error_prefix'] = '<span style="color:#f00">';
$config['error_suffix'] = '</span>';
?>