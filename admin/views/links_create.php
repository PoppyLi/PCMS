
<div class="btn-group">
	<a href="<?php echo site_urlc('links/index')?>" class='btn'> <i class="fa fa-arrow-left"></i> 返回列表</a>
</div>

<?php include_once 'inc_form_errors.php'; ?>

<div class="boxed">

	<h3> 添加 <span class="badge badge-success pull-right"><?php echo $title; ?></span></h3>
	<?php echo form_open(current_urlc(),array("class"=>"form-horizontal","id"=>"frm-create")); ?>

		<div class="boxed-inner seamless">
			<div class="control-group">
				<label class="control-label" for="title"> 标题</label>
				<div class="controls">
					<input type="text" name="title" value="<?php echo set_value('title') ?>" id="title" x-webkit-speech>
				</div>
			</div>

			<div class="control-group">
				<label class="control-label" for="link"> 链接</label>
				<div class="controls">
					<input type="text" name="link" value="<?php echo set_value('link') ?>" id="link">
				</div>
			</div>
		</div>

		<div class="boxed-footer">
			<?php if ($this->ccid): ?>
			<input type="hidden" name="ccid" value="<?php echo $this->ccid ?>">
			<?php endif ?>
			<input type="hidden" name="cid" value="<?php echo $this->cid ?>">
			<input type="submit" value=" <?php echo lang('submit'); ?> " class='btn btn-primary'>
			<input type="reset" value=' <?php echo lang('reset'); ?> ' class="btn btn-danger"> 
		</div>

	</form>
</div>

<script type="text/javascript" charset="utf-8">
$(function() {
	rules = {
		title: {
			required:true,
			minlength:3
		},
		link: {
			required:true,
			url:true,
			minlength:6
		}
	};
	make_validate('frm-create',rules);
});
</script>
