<?php include_once 'err_header.php'; ?>
<div class="alert alert-error">
	<h1><?php echo $heading; ?></h1>
	<?php
	if (ENVIRONMENT == 'production') {
		header("Location: ".ADMINER_URL, TRUE, 302);
	}else{
		echo $message; 
	}
	?>
</div>
<?php include_once 'err_footer.php'; ?>
