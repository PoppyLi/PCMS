<?php
$config = array(
	'login' => array(
			array(
				'field'   => 'uname', 
				'label'   => '帐号', 
				'rules'   => 'trim|required|strtolower|callback_uname_check'
			),
			// 密码验证放在最后
			array(
				'field'   => 'pwd', 
				'label'   => '密码', 
				'rules'   => 'trim|required|callback_passwd'
			)
		),
	'getpass' => array(
			array(
				'field' => 'email'
				,'label' => '邮箱帐号'
				,'rules' => 'trim|required|strtolower|valid_email|callback_mail_check'
			)
		),
	'setpass' => array(
			array(
				'field'   => 'pwd', 
				'label'   => '密码', 
				'rules'   => 'trim|required|min_length[6]|matches[pwdre]'
			),
			array(
				'field'   => 'pwdre', 
				'label'   => '验证密码', 
				'rules'   => 'trim|required|min_length[6]'
			),
		)
);

$config['error_prefix'] = '<span style="color:#f00">';
$config['error_suffix'] = '</span>';
?>
