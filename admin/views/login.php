<?php if (ielt9()): ?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><?php else: ?><!DOCTYPE HTML><?php endif ?>
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
	echo static_file('font-awesome.css');
	echo static_file('adminer/ui.css');
	echo static_file('adminer/login.css');
	?>

	<style type="text/css" media="screen">
		#body-main .container{
			padding:50px 0; position:relative; overflow:hidden;
			height:420px;
		}
		.boxed{
			width: 320px;
			max-width: 320px;
			*max-width:320px;
			padding: 19px 29px 29px;
			margin: 0 auto;
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
		
		#login{position:absolute; top:50px; left:50%; margin-left:-190px;}
		#getpass{ position:absolute; top:50px; left:50%; margin-left:190px; opacity:0; filter:alpha(opacity=0);}
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
            <?php
            	if ($this->input->get('url')) {
            		$after = '?url='.$this->input->get('url');
            		$sub_url = site_url('login').$after;
            	}else{
            		$sub_url = site_url('login');
            	}
	            echo form_open($sub_url,array("class"=>"form-horizontal","id"=>"frm-login")); 
	        ?>
				<div class="boxed-inner seamless">
					<h3 style="padding:20px 0 0 27px;"> <i class="fa fa-sign-in"></i> 网站管理系统<?php echo lang('login') ?> </h3>
					<div class="control-group">
						<div class="input-prepend">
							<span class="add-on"><i class="fa fa-user"></i></span>   
							<input type="text" name="uname" value="<?php echo set_value('uname') ?>" id="uname" placeholder="<?php echo lang('member') ?>" required="required"  >
						</div>
					</div>
					<div class="control-group">
						<div class="input-prepend">
							<span class="add-on"><i class="fa fa-lock"></i></span>   
							<input type="password" name="pwd" id="pwd" placeholder="<?php echo lang('password') ?>" required />
						</div>
					</div>

					<div class="control-group">
						<label class="checkbox">
							<input type="checkbox" name="rember" value="1" id="rember" class="select-it" <?php echo set_switch('rember','1'); ?> >
							<?php echo lang('remberme') ?>
						</label>
					</div>
				</div>
				<div class="boxed-footer">
					<input id='submit' type="submit" value="<?php echo lang('login') ?>" class="btn btn-primary">
					<a id="btn-lostpass" href="#" class="pull-right" style="padding-top:5px;" > <?php echo lang('password_lost') ?> </a>
				</div>
			</form>
			<p></p>	
			<?php include_once 'inc_form_errors.php'; ?>
			<?php if (isset($msg)): ?>
			<p></p>
			<div class="alert <?php echo $status?'alert-success':'alert-error'; ?>">  <button type="button" class="close" data-dismiss="alert"> <i class="fa fa-times"></i> </button>  <?php echo $msg; ?></div>
			<?php endif ?>
		</div>

		

		<div class="boxed" id="getpass">
			<div class="boxed-inner ">
				<h3> <i class="fa fa-key"></i> <?php echo lang('password_get') ?></h3>
				<p>
					<?php echo lang('password_get_helper') ?>
				</p>
				<div class="control-group">
					<div class="input-prepend">
						<span class="add-on"><i class="icon-envelope"></i></span>   
						<input type="text" name="email" value="" id="email" placeholder="email" required="required" >
					</div>
				</div>
			</div>
			<div class="boxed-footer" style='padding-left:20px;'>
				<a id="btn-getpass" href="#" class="add-on btn btn-success"> <i class="fa fa-key"></i> <?php echo lang('password_get') ?> </a>
				<a id="btn-login" href="#" class="pull-right" style="padding-top:5px;" > <?php echo lang('login') ?> <i class="fa fa-sign-in"></i> </a>
			</div>
			<p></p>
			<div id="pass-msg" class="alert alert-error hide"><button type="button" class="close" data-dismiss="alert"> <i class="fa fa-times"></i> </button><div></div>
			</div>
		</div>
		<div style="text-align:center;color:#0088cc; font-size:14px; margin-top:400px;">客服热线：400- </div>
	</div>
	<div class='clear' id="footer-push"></div>
</div>
<script type="text/javascript" charset="utf-8">

var rules = {
	uname: {
		required:true
	},
	pwd: {
		required:true
	}
};
var messages = {
	uname:{
		required:"还未输入帐号"
	},
	pwd:{
		required:"还未输入密码"
	}

};

var getpass = "<?php echo site_url('login/getpass'); ?>";

$(function() {
	make_validate("frm-login",rules,messages,0);

	$('#btn-lostpass').on('click', function(event) {
		event.preventDefault();
		$('#login').animate({"marginLeft":"-800px","opacity":"0"},600);
		$('#getpass').animate({"marginLeft":"-190px","opacity":"1"},600);	
	});

	$('#btn-login').on('click', function(event) {
		event.preventDefault();
		$('#getpass').animate({"marginLeft":"300px","opacity":"0"},600);
		$('#login').animate({"marginLeft":"-190px","opacity":"1"},600);	
	});

	$('#btn-getpass').on('click', function(event) {
		event.preventDefault();

		$.ajax({
			url: getpass,
			type: 'POST',
			dataType: 'json',
			data: {
				email: $('#email').val()
				,_cfs:$.cookie('_cfc')
			}
		})
		.done(function(data) {
			console.log("success");
			console.log(data);

			var status = "alert-error";
			if (data.status==1) {
				status = "alert-success"
				$('#pass-msg').removeClass('alert-error');
				$('#pass-msg').addClass('alert-success');
			};

			$('#pass-msg').removeClass('hide');
			$('#pass-msg').children('div').html(data.msg);

		})
		.fail(function() {
			console.log("error");
		})
		.always(function() {
			console.log("complete");
		});
		
	});

})
</script>

</body>
</html>
