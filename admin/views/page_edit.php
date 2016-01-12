<?php include_once 'inc_modules_path.php'; ?>

<h3>  <i class="fa fa-pencil"></i>  <?php echo $title; ?></h3>

<?php include_once 'inc_form_errors.php'; ?>

<div class="boxed">
	<?php echo form_open(site_urlc($this->class.'/edit'), array('class' => 'form-horizontal', 'id' => 'frm-edit')); ?>

		<input class="hide" type="text" id="p-title" name="title" value="<?php echo set_value('title',$seo['title']) ?>">
		<input class="hide" type="text" id="p-title_seo" name="title_seo" value="<?php echo set_value('title_seo',$seo['title_seo']) ?>">
		<input class="hide" type="text" id="p-tags" name="tags" value="<?php echo set_value('tags',$seo['tags']) ?>">
		<textarea class="hide" id='p-intro' name="intro" rows='8' class='span4'><?php echo set_value('intro',$seo['intro']) ?></textarea>

		<div class="boxed-inner seamless">	
			<div class="control-group uefull">
				<textarea id="editor_id" name="content" > <?php echo set_value('content',$it['content']); ?></textarea>
				<!-- <span class="help-inline"></span> -->
			</div>

			<?php $tmp = array(4,7,13,10,17,25);
			if (in_array($this->cid, $tmp)) {} else{ ?>		
			<!-- 图片上传 -->
			<div class="control-group">
				<label for="img" class="control-label">图片：</label>
				<div class="controls">
					<div class="btn-group">
						<span class="btn btn-success">
							<i class="fa fa-upload"></i>
							<span> <?php echo lang('upload_file') ?> </span>
							<input class="fileupload" type="file"  accept="" multiple="" data-for="thumb" data-more="1">
						</span>
						<input type="hidden" name="photo" class="form-upload" data-more="1" value="<?php echo $it['photo'] ?>">
						<input type="hidden" name="thumb" class="form-upload-thumb" value="<?php echo $it['thumb'] ?>">
					</div>
				</div>
			</div>

			<div id="js-photo-show" class="js-img-list-f">
				<!-- 模板 #tpl-img-list -->
			</div>

			<div class="clear"></div>
			<?php } ?>

		</div>

		<div class="boxed-footer">
			<input type="hidden" name="cid" value="<?php echo $this->cid ?>">
			<input type="hidden" name="id" value="<?php echo $it['id']?>">
			<input type="submit" value="<?php echo lang('submit') ?>" class="btn btn-primary">
			<input type="reset" value="<?php echo lang('reset') ?>" class="btn btn-danger">
		</div>
	</form>
</div>

<?php include_once 'inc_ui_ueditor.php'; ?>
<?php include_once 'inc_ui_media.php'; ?>
<script type="text/javascript">
	ui.editor_create('editor_id');
	<?php if ($ps) {?>
	var page_photos = <?php echo json_encode($ps) ?>;
	media.show(page_photos,'photo');
	media.sort('photo');
	<?php } ?>
</script>
<?php //echo static_file('adminer/page.js'); ?>
