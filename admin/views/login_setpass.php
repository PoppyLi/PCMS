<!DOCTYPE HTML>
<html lang="zh">
<head>
	<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
	<meta http-equiv="content-language" content="zh-CN" />
	<title> <?php echo $title.$this->config->item('title_suffix'); ?> </title>
	<meta name="copyright" content="2012" />
	<link rel="shortcut icon" href="<?php echo IMG_URL; ?>icon.png" type="image/x-icon"/>
	<link rel="canonical" href="/"/>
	<meta name="author" content="pcms" />
	<meta name="robots" content="deny" />
	<script type="text/javascript" charset="utf-8">
	var STATIC_URL = "<?php echo STATIC_URL?>" ;
	var UPLOAD_URL = "<?php echo UPLOAD_URL?>" ;
	var ADMINER_URL = "<?php echo ADMINER_URL?>" ;
	</script>
	<?php
	echo static_file('bootstrap.css'); 
	echo static_file('bootstrap-responsive.css'); 
	echo static_file('adminer/bootstrap.ui.css');
	echo static_file('adminer/ui.css');
	?>

	<style type="text/css" media="screen">
		#body-main .container{
			padding:50px 0;
		}
		.boxed-inner h3{
			padding:0 0 0 27px;
		}
		.boxed{
			max-width: 300px;
			padding: 19px 29px 29px;
			margin: 0 auto 20px;
			background-color: #fff;
		}
		div.alert{
			border-radius: 0;
			border: 0;
		}
		span{font-size:13px;}
		span.error{
			color:red;
		}
		.form-horizontal .control-group {padding:15px 25px;}
		.form-horizontal .form-actions {padding-left:25px;}
		span.help-inline{display: block; }
	</style>

	<?php 
	echo static_file('jquery-1.10.2.js');	
	 echo static_file('bootstrap.js'); 
	 echo static_file('jquery.validate.js');
	 echo static_file('jquery.cookie.js');
	 echo static_file('jquery-ui-1.10.3.custom.js');
	 echo static_file('tools.js'); 
	 echo static_file('adminer/init.js');
	 echo static_file('adminer/ui.js'); 
	?>

	<!--[if IE 6]>
	<?php echo static_file('bootstrap-ie6.css') ?>
	<?php echo static_file('bootstrap-ie6.js') ?>
	<![endif]-->

	
	<!--[if IE 7]>
	<?php echo static_file('font-awesome-ie7.min.css') ?>
	
	<![endif]-->

	<!-- 提供HTML5支持 Le HTML5 shim, for IE6-8 support of HTML5 elements -->
	<!--[if lt IE 9]>
	<?php 
		echo static_file('html5.js');
		echo static_file('respond.js');
		echo static_file('modernizr.js');
	?>
	<![endif]-->
</head>
<body>
<div id="body-main">
	<div class="container">
		<!-- debug show or hide -->
		<?php include_once 'inc_xdebug.php';?>

		<div class="boxed" id='login'>
			<?php echo form_open('login/setpass/'.$_GET['p0'].'/'.$_GET['p1'],array("class"=>"form-horizontal","id"=>"frm-pwd")); ?>
				<div class="boxed-inner seamless">
					<h3> <?php echo lang('password_set') ?></h3>
					
					<div class="control-group">
						<?php echo $nickname; ?>
					</div>

					<div class="control-group">
						<div class="input-prepend">
							<span class="add-on"><i class="icon-lock"></i></span>   
							<input type="password" id="pwd" name="pwd" value="<?php echo set_value('pwd') ?>">
						</div>
					</div>

					<div class="control-group">
						<div class="input-prepend">
							<span class="add-on"><i class="icon-repeat"></i></span>   
							<input type="password" id="pwdre" name="pwdre" value="<?php echo set_value('pwdre') ?>">
						</div>
					</div>
					
				</div>
				<div class="boxed-footer" style='padding-left:20px;'>
					<input id='submit' type="submit" value="<?php echo lang('password_set') ?>" class="btn btn-primary">
				</div>
			</form>
		</div>
		<p></p>
		<?php include_once 'inc_form_errors.php'; ?>
	</div>
	<div class='clear' id="footer-push"></div>
</div>

<div id="body-footer">
	<div class="container-fluid">
		<p class="muted credit"> Power by  <a href="http://"> &copy; </a> .</p>
	</div>
</div>

<script type="text/javascript" charset="utf-8">
var passwd_rule = {
	rules : {
		pwd: {
			required:true,
			minlength:6,
			maxlength:30
		},
		pwdre: {
			required:true,
			minlength:6,
			maxlength:30,
			equalTo:"#pwd"
		}
	},
	messages:{
		pwd: {
			required : "你不能不输入 密码！",
			minlength: "输入字符数不的小于 {0}！",
			maxlength: "输入字符数不的大于 {0}！"
		},
		pwdre: {
			required : "密码必须验证！",
			minlength: "输入字符数不的小于 {0}！",
			maxlength: "输入字符数不的大于 {0}！",
			equalTo: "必须输入一致的密码!"
		}
	}
}
make_validate('frm-pwd',passwd_rule.rules,passwd_rule.messages,0);
</script>

</body>
</html>