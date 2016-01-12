<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title><?php echo $CI->config->item('title_suffix'); echo empty($header['title']) ? '':'-'.$header['title'];?></title>
<meta name="viewport" content="width=device-width,height=device-height,initial-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta name="apple-mobile-web-app-capable" content="yes" />
<meta name="apple-mobile-web-app-status-bar-style" content="black" />
<meta name="format-detection" content="telephone=no" />
<meta name="Keywords" content="<?php echo $header['tags'];?>"/>
<meta name="Description" content="<?php echo $header['intro'];?>"/>
<meta name="author" content="" />
<meta name="renderer" content="webkit">
<link href="<?php echo GLOBAL_URL ?>favicon.ico" rel="shortcut icon">
<script>
	var STATIC_URL = "<?php echo STATIC_URL ?>";
	var GLOBAL_URL = "<?php echo GLOBAL_URL ?>";
	var UPLOAD_URL = "<?php echo UPLOAD_URL ?>" ;
	var SITE_URL = "<?php echo GLOBAL_URL ?>" ;
</script>
<?php
	echo static_file('reset.css'); 
	echo static_file('jQuery.js');
	echo static_file('jquery.easing.1.3.js');
	echo static_file('prefixfree.min.js');
	echo static_file('jquery.SuperSlide.2.1.1.js');
	echo static_file('jquery.scrollLoading.js'); 
	echo static_file('web/js/main.js');
	
	//web
	echo static_file('web/css/normalize.css');
	echo static_file('web/css/zxx.lib.css');
	echo static_file('web/css/style.css');

	echo static_file('jquery.validate.js'); 
	echo static_file('jquery.validate.lang.cn.js'); 
	echo static_file('site/init.js');
	echo static_file('tools.js'); 
	echo static_file('site/ui.js'); 
	echo static_file('jquery.cookie.js');

	
?>
<!--[if IE 6]>
	<?php
		echo static_file('IE6PNG.js');
	?>
	<script type="text/javascript">
		IE6PNG.fix('*,.png:hover,.png');
	</script>
<![endif]-->

