
<div class="btn-group">
	<a href="<?php echo site_url('acount/index')?>" class='btn'> <i class="fa fa-arrow-left"></i> <?php echo lang('back_list')?></a>
</div>

<?php include_once 'inc_form_errors.php'; ?>

<div class="boxed">
	<h3> <i class="fa fa-plus"></i> <span class="badge badge-success pull-right"><?php echo $title; ?></span> <?php echo lang('add') ?></h3>
	<?php echo form_open(current_url(),array("class"=>"form-horizontal","id"=>"frm-create")); ?>

		<div class="boxed-inner seamless">
			<div class="control-group">
				<label class="control-label" for="title"> 用户名</label>
				<div class="controls">
					<input type="text" id="title" name="title" value="<?php echo set_value("title") ?>" x-webkit-speech>
					<a href="#seo-modal" role="button" class="btn btn-info" data-toggle="modal"><?php echo lang('seo') ?></a>
				</div>
			</div>


			<div class="control-group">			
				<label for="tel" class="control-label">手机号</label>
				<div class="controls">
					<input type="text" name="tel" id="tel" value="<?php echo set_value('tel'); ?>"  placeholder="" >
					<span class="help-inline"></span>
				</div>
			</div>	

			<div class="control-group">			
				<label for="pwd" class="control-label">密码</label>
				<div class="controls">
					<input type="text" name="pwd" id="pwd" value="<?php echo set_value('pwd'); ?>"  placeholder="" >
					<span class="help-inline"></span>
				</div>
			</div>	





			<div class="control-group">			
				<label for="birthplace" class="control-label">证件号码</label>
				<div class="controls">
					<input type="text" name="birthplace" id="birthplace" value="<?php echo set_value('birthplace'); ?>"  placeholder="" >
					<span class="help-inline"></span>
				</div>
			</div>	

			<div class="control-group">			
				<label for="birthplace" class="control-label">参与项目</label>
				<div class="controls">
					<?php foreach ($pro as $k => $v) {?>
						<input type="checkbox" name="cslist[]" value="<?php echo $v['id'] ?>" /> <?php echo $v['title'] ?>&nbsp;&nbsp;
					<?php } ?>
				</div>
			</div>	




			<div class="control-group">
				<label for="title" class="control-label">时间:</label>
				<div class="controls">
					<div class="input-append date timepicker">
						<input type="text" value="<?php echo date("Y-m-d H:i:s",set_value('timeline',now())); ?>" id="timeline" name="timeline" data-date-format="yyyy-mm-dd hh:ii:ss">
						<span class="add-on"><i class="icon-th"></i></span>
					</div>
				</div>
			</div>



			<!-- ctype -->
<!-- 			<?php if ($ctype = list_coltypes($this->cid)) { ?>
			<div class="control-group">
				<label class="control-label" for="status"> 所属分类:</label>
				<div class="controls">
					<?php 
						echo ui_btn_select('ctype',set_value("ctype"),$ctype);
					?>
					<span class="help-inline"></span>
				</div>
			</div>
			<?php } ?> -->

			<!-- 弹出 -->
<!-- 			<div id="seo-modal" class="modal hide fade">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="fa fa-times"></i></button>
					<h3> <i class="fa fa-info-circle"></i><?php echo lang('seo') ?> </h3>
				</div>
				<div class="modal-body seamless">

					<div class="control-group">
						<label for="title_seo" class="control-label"><?php echo lang('title_seo') ?></label>
						<div class="controls">
							<input type="text" id="title_seo" name="title_seo" value="<?php echo set_value("title_seo") ?>" x-webkit-speech>
							<span class="help-inline"></span>
						</div>
					</div>
					
					<div class="control-group">
						<label class="control-label" for="tags"><?php echo lang('tag') ?></label>
						<div class="controls">
							<input type="text" id="tags" name="tags" value="<?php echo set_value("tags") ?>">
							<span class="help-inline">使用英文标点`,`隔开</span>
						</div>
					</div>
					
					<div class="control-group">
						<label for="intro"  class="control-label"><?php echo lang('intro') ?></label>
						<div class="controls">
							<textarea name="intro" rows='8' class='span4'> <?php echo set_value('intro') ?> </textarea>
							<span class="help-inline"></span>
						</div>
					</div>

				</div>
				<div class="modal-footer">
					<a href="#"  data-dismiss="modal" aria-hidden="true" class="btn"><?php echo lang('close') ?></a>
				</div>
			</div> -->


<!-- 			<div class="control-group uefull">
				<textarea id="content" name="content" ></textarea>
			</div>




			<div class="control-group">
				<label for="img" class="control-label"><?php echo lang('photo') ?>：</label>
				<div class="controls">
					<div class="btn-group">
						<span class="btn btn-success">
							<i class="fa fa-upload"></i>
							<span> <?php echo lang('upload_file') ?> </span>
							<input class="fileupload" type="file" accept="">
						</span>
						<input type="hidden" name="photo" class="form-upload" data-more="0" value="<?php echo set_value("photo") ?>">
						<input type="hidden" name="thumb" class="form-upload-thumb" value="<?php echo set_value("thumb") ?>">
					</div>
				</div>
			</div>

			<div id="js-photo-show" class="js-img-list-f">

			</div>
			<div class="clear"></div> -->


		</div>

		<div class="boxed-footer">
<!-- 			<input type="hidden" name="cid" value="<?php echo $this->cid ?>">
			<?php if ($this->ccid): ?>
			<input type="hidden" name="ccid" value="<?php echo $this->ccid ?>">
			<?php endif ?> -->
			<input type="submit" value=" <?php echo lang('submit'); ?> " class='btn btn-primary'>
			<input type="reset" value=' <?php echo lang('reset'); ?> ' class="btn btn-danger"> 
		</div>
	</form>
</div>

<?php include_once 'inc_ui_ueditor.php'; ?>
<?php include_once 'inc_ui_media.php'; ?>

<?php if ($p = set_value('photo')): ?>
<script type="text/javascript">
	var coltypes_photos = <?php echo json_encode(one_upload($p)) ?>;
	media.show(coltypes_photos,"photo");
</script>
<?php endif ?>

<?php 
echo static_file('bootstrap-datetimepicker.css');
echo static_file('bootstrap-datetimepicker.js');
echo static_file('locales/bootstrap-datetimepicker.zh-CN.js');
?>
<script type="text/javascript">
	// datetime
	$('.timepicker').datetimepicker({'language':'zh-CN','format':'yyyy/mm/dd hh:ii:ss','todayHighlight':true});

	ui.editor_create('content');
</script>
<?php echo static_file('adminer/acount.js'); ?>
