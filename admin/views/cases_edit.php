
<div class="btn-group"><a href="<?php echo site_urlc('cases/index');?>" class="btn"> <i class="fa fa-arrow-left"></i> <?php echo lang('back_list')?> </a></div>

<?php include_once 'inc_form_errors.php'; ?>

<div class="boxed">
	<h3> <i class="fa fa-pencil"></i> 编辑消息 <span class="badge badge-success pull-right"><?php echo $title; ?></span></h3>
	<?php echo form_open(current_urlc(), array('class' => 'form-horizontal', 'id' => 'frm-edit')); ?>

		<div class="boxed-inner seamless">	

			<div class="control-group">
				<label for="title" class="control-label">标题</label>
				<div class="controls">
					<input type="text" name="title" id="title" value="<?php echo set_value('title',$it['title']); ?>"  placeholder="栏目名称" required=1>
					<a href="#seo-modal" role="button" class="btn btn-info" data-toggle="modal">SEO</a>
					<span class="help-inline"></span>
				</div>
			</div>
			<div class="control-group">
				<label for="title" class="control-label">时间:</label>
				<div class="controls">
					<div class="input-append date timepicker">
						<input type="text" value="<?php echo date("Y/m/d H:i:s",set_value('timeline',$it['timeline'])); ?>" id="timeline" name="timeline">
						<span class="add-on"><i class="icon-th"></i></span>
					</div>
				</div>
			</div>
			
			<!-- switch demo -->
			<div class="control-group">
				<label class="control-label" for="status"><?php echo lang('status') ?>:</label>
				<div class="controls">
					<?php 
					$status = array(
						array(
							'title' => "草稿"
							,'value' => '0'
						)
						,array(
							'title' => "发布"
							,'value' => '1'
						)
					);
					echo ui_btn_switch('status',$it['status'],$status);
					?>
					<span class="help-inline"></span>
				</div>
			</div>

			<div class="control-group">
				<label for="img" class="control-label">缩略图</label>
				<div id="js-photo-show" class="js-img-list-f">
					<!-- 模板 #tpl-img-list -->
				</div>
				<div class="controls">(134*94)
					<div class="btn-group">
						<span class="btn btn-success">
							<i class="fa fa-upload"></i>
							<span> <?php echo lang('upload_file') ?> </span>
							<input class="fileupload" type="file" accept="">
						</span>
						<input type="hidden" name="photo" class="form-upload" data-more="0" value="<?php echo set_value('photo',$it['photo']) ?>">
						<input type="hidden" name="thumb" class="form-upload-thumb" value="<?php echo set_value('thumb',$it['thumb']) ?>">
					</div>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="status"> 设计风格:</label>
				<?php 
					$list_type = list_coltypes(4,20);
					if(!empty($list_type))			
						array_unshift($list_type,array('id'=>0,'fid'=>0,'title'=>"请选择设计风格"));
				?>
				<div class="controls">
					<?php 
						echo ui_btn_select('ctype',set_value("ctype",$it['ctype']),$list_type);
					?>
					<span class="help-inline"></span>
				</div>
			</div>
			<!-- 弹出 -->
			<div id="seo-modal" class="modal hide fade">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="fa fa-times"></i></button>
					<h3> <i class="fa fa-info-circle"></i> SEO优化</h3>
				</div>
				<div class="modal-body seamless">

					<div class="control-group">
						<label for="title_seo" class="control-label">标题优化</label>
						<div class="controls">
							<input type="text" id="title_seo" name="title_seo" value="<?php echo set_value('title_seo',$it['title_seo']) ?>" x-webkit-speech>
							<span class="help-inline"></span>
						</div>
					</div>

					<div class="control-group">
						<label class="control-label" for="tag">标签</label>
						<div class="controls">
							<input type="text" id="tags" name="tags" value="<?php echo set_value('tags',$it['tags']) ?>" placeholder="tag1,tag2">
							<span class="help-inline">使用英文标点`,`隔开</span>
						</div>
					</div>

					<div class="control-group">
						<label for="intro"  class="control-label">简介</label>
						<div class="controls">
							<textarea name="intro" rows='8' class='span4'><?php echo set_value('intro',$it['intro']) ?></textarea>
							<span class="help-inline"></span>
						</div>
					</div>

				</div>
				<div class="modal-footer">
					<a href="#"  data-dismiss="modal" aria-hidden="true" class="btn">Close</a>
				</div>
			</div>
			<div class="control-group uefull">
				<textarea id="editor_id" name="content"> <?php echo set_value('content',$it['content']); ?></textarea>
			</div>
			<div class="clear"></div>
		</div>
		<div class="boxed-footer">
			<?php if ($this->ccid): ?>
			<input type="hidden" name="ccid" value="<?php echo $this->ccid ?>">
			<?php endif ?>
			<input type="hidden" name="cid" value="<?php echo $this->cid ?>">
			<input type="hidden" name="id" value="<?php echo $it['id']?>">
			<input type="submit" value="<?php echo lang('submit') ?>" class="btn btn-primary">
			<input type="reset" value="<?php echo lang('reset') ?>" class="btn btn-danger">
		</div>
	</form>
</div>

<!-- 注意加载顺序 -->
<?php include_once 'inc_ui_ueditor.php'; ?>
<?php include_once 'inc_ui_media.php'; ?>
<?php 
echo static_file('bootstrap-datetimepicker.css');
echo static_file('bootstrap-datetimepicker.js');
echo static_file('locales/bootstrap-datetimepicker.zh-CN.js');
?>
<script type="text/javascript">
	// timeline
	$('.timepicker').datetimepicker({'language':'zh-CN','format':'yyyy/mm/dd hh:ii:ss','todayHighlight':true});

	ui.editor_create('editor_id');
	var articles_photos = <?php echo json_encode($ps) ?>;
	media.show(articles_photos,"photo");
</script>
<?php echo static_file('adminer/article.js'); ?>

