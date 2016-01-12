
<div class="btn-group">
	<a href="<?php echo site_urlc('article/index')?>" class='btn'> <i class="fa fa-arrow-left"></i> <?php echo lang('back_list')?></a>
</div>

<?php include_once 'inc_form_errors.php'; ?>

<div class="boxed">
	<h3> <i class="fa fa-plus"></i> <span class="badge badge-success pull-right"><?php echo $title; ?></span> <?php echo lang('add') ?></h3>
	<?php echo form_open(current_urlc(),array("class"=>"form-horizontal","id"=>"frm-create")); ?>

		<div class="boxed-inner seamless">
			<div class="control-group">
				<label class="control-label" for="title"> <?php $tmp = array(12);if (in_array($this->cid, $tmp)) {echo "招聘职位：" ;}else{echo lang('title');}?></label>
				<div class="controls">
					<input type="text" id="title" name="title" value="<?php echo set_value("title") ?>" x-webkit-speech>
					<a href="#seo-modal" role="button" class="btn btn-info" data-toggle="modal"><?php echo lang('seo') ?></a>
				</div>
			</div>


			<?php $tmp = array(12);
			if (in_array($this->cid, $tmp)) { ?>	
			<div class="control-group">			
				<label for="num" class="control-label">需求人数：</label>
				<div class="controls">
					<input type="text" name="num" id="num" value="<?php echo set_value('num'); ?>"  placeholder="">
					<span class="help-inline"></span>
				</div>
			</div>	
			<?php } ?>

			<?php $tmp = array(12);
			if (in_array($this->cid, $tmp)) { ?>	
			<div class="control-group">			
				<label for="money" class="control-label">薪资待遇:</label>
				<div class="controls">
					<input type="text" name="money" id="money" value="<?php echo set_value('money'); ?>"  placeholder="">
					<span class="help-inline"></span>
				</div>
			</div>	
			<?php } ?>

			<?php $tmp = array(6);
			if (in_array($this->cid, $tmp)) { ?>	
			<div class="control-group">			
				<label for="money" class="control-label">连接:</label>
				<div class="controls">
					<input type="text" name="money" id="money" value="<?php echo set_value('money'); ?>"  placeholder="">
					<span class="help-inline"></span>
				</div>
			</div>	
			<?php } ?>

<!-- 			<?php $tmp = array(23);
			if (in_array($this->cid, $tmp)) { ?>	
			<div class="control-group">			
				<label for="name" class="control-label">基金名称:</label>
				<div class="controls">
					<input type="text" name="name" id="name" value="<?php echo set_value('name'); ?>"  placeholder="">
					<span class="help-inline"></span>
				</div>
			</div>	
			<?php } ?>

			<?php $tmp = array(23);
			if (in_array($this->cid, $tmp)) { ?>	
			<div class="control-group">			
				<label for="money" class="control-label">基金总额:</label>
				<div class="controls">
					<input type="text" name="money" id="money" value="<?php echo set_value('money'); ?>"  placeholder="">
					<span class="help-inline"></span>
				</div>
			</div>	
			<?php } ?>

			<?php $tmp = array(23);
			if (in_array($this->cid, $tmp)) { ?>	
			<div class="control-group">			
				<label for="money_qy" class="control-label">目前基金权益:</label>
				<div class="controls">
					<input type="text" name="money_qy" id="money_qy" value="<?php echo set_value('money_qy'); ?>"  placeholder="">
					<span class="help-inline"></span>
				</div>
			</div>	
			<?php } ?>

			<?php $tmp = array(23);
			if (in_array($this->cid, $tmp)) { ?>	
			<div class="control-group">			
				<label for="name" class="control-label">成立时间:</label>
				<div class="controls">
					<div class="input-append date timepicker">
						<input type="text" value="<?php echo date("Y-m-d H:i:s",set_value('time',now())); ?>" id="time" name="time" data-date-format="yyyy-mm-dd hh:ii:ss">
						<span class="add-on"><i class="icon-th"></i></span>
					</div>
				</div>
			</div>	
			<?php } ?>


			<?php $tmp = array(23);
			if (in_array($this->cid, $tmp)) { ?>	
			<div class="control-group">			
				<label for="place" class="control-label">注册地点:</label>
				<div class="controls">
					<input type="text" name="place" id="place" value="<?php echo set_value('place'); ?>"  placeholder="">
					<span class="help-inline"></span>
				</div>
			</div>	
			<?php } ?>

			<?php $tmp = array(23);
			if (in_array($this->cid, $tmp)) { ?>	
			<div class="control-group">			
				<label for="money_rg" class="control-label">认购金额:</label>
				<div class="controls">
					<input type="text" name="money_rg" id="money_rg" value="<?php echo set_value('money_rg'); ?>"  placeholder="">
					<span class="help-inline"></span>
				</div>
			</div>	
			<?php } ?>

			<?php $tmp = array(23);
			if (in_array($this->cid, $tmp)) { ?>	
			<div class="control-group">			
				<label for="money_bl" class="control-label">股权比例:</label>
				<div class="controls">
					<input type="text" name="money_bl" id="money_bl" value="<?php echo set_value('money_bl'); ?>"  placeholder="">
					<span class="help-inline"></span>
				</div>
			</div>	
			<?php } ?>

			<?php $tmp = array(23);
			if (in_array($this->cid, $tmp)) { ?>	
			<div class="control-group">			
				<label for="money_yj" class="control-label">已缴金额:</label>
				<div class="controls">
					<input type="text" name="money_yj" id="money_yj" value="<?php echo set_value('money_yj'); ?>"  placeholder="">
					<span class="help-inline"></span>
				</div>
			</div>	
			<?php } ?>

			<?php $tmp = array(23);
			if (in_array($this->cid, $tmp)) { ?>	
			<div class="control-group">			
				<label for="money_wj" class="control-label">未缴金额:</label>
				<div class="controls">
					<input type="text" name="money_wj" id="money_wj" value="<?php echo set_value('money_wj'); ?>"  placeholder="">
					<span class="help-inline"></span>
				</div>
			</div>	
			<?php } ?>

			<?php $tmp = array(23);
			if (in_array($this->cid, $tmp)) { ?>	
			<div class="control-group">			
				<label for="money_mq" class="control-label">目前权益:</label>
				<div class="controls">
					<input type="text" name="money_mq" id="money_mq" value="<?php echo set_value('money_mq'); ?>"  placeholder="">
					<span class="help-inline"></span>
				</div>
			</div>	
			<?php } ?>

			<?php $tmp = array(23);
			if (in_array($this->cid, $tmp)) { ?>	
			<div class="control-group">			
				<label for="money_fh" class="control-label">实际分红:</label>
				<div class="controls">
					<input type="text" name="money_fh" id="money_fh" value="<?php echo set_value('money_fh'); ?>"  placeholder="">
					<span class="help-inline"></span>
				</div>
			</div>	
			<?php } ?> -->

			<div class="control-group">
				<label for="title" class="control-label">时间:</label>
				<div class="controls">
					<div class="input-append date timepicker">
						<input type="text" value="<?php echo date("Y-m-d H:i:s",set_value('timeline',now())); ?>" id="timeline" name="timeline" data-date-format="yyyy-mm-dd hh:ii:ss">
						<span class="add-on"><i class="icon-th"></i></span>
					</div>
				</div>
			</div>

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
					echo ui_btn_switch('status',set_value("status",1),$status);
					?>
					<span class="help-inline"></span>
				</div>
			</div>

			<!-- ctype -->
			<?php if ($ctype = list_coltypes($this->cid)) { ?>
			<div class="control-group">
				<label class="control-label" for="status"> 所属分类:</label>
				<div class="controls">
					<?php 
						echo ui_btn_select('ctype',set_value("ctype"),$ctype);
					?>
					<span class="help-inline"></span>
				</div>
			</div>
			<?php } ?>

			<!-- 弹出 -->
			<div id="seo-modal" class="modal hide fade">
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
			</div>


			<?php $tmp = array(18,21,6,22);
			if (in_array($this->cid, $tmp)) {} else{ ?>		
			<div class="control-group uefull">
				<textarea id="content" name="content" ></textarea>
			</div>
			<?php } ?>


			<?php $tmp = array(2,3,12,11,22);
			if (in_array($this->cid, $tmp)) {} else{ ?>		
			<!-- 图片上传 -->
			<div class="control-group">
				<label for="img" class="control-label"><?php $tmp = array(21);if (in_array($this->cid, $tmp)) { echo "文件";} else{ echo lang('photo') ;}?>：</label>
				<div class="controls">
					<?php if ($this->cid == 5) {
						echo '(130*27)';
					} elseif ($this->cid == 8) {
						echo '(140*94)';
					} elseif ($this->cid == 14) {
						echo '(294*196)';
					} elseif ($this->cid == 15) {
						echo '(294*196)';
					} elseif ($this->cid == 18) {
						echo '(200*117)';
					} elseif ($this->cid == 6) {
						echo '(100*70)';
					} elseif ($this->cid == 23) {
						echo '(425*90)';	
					}?>
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

			<!-- 对应 photo 模板容器 js 开头为js操作的容器 -->
			<div id="js-photo-show" class="js-img-list-f">
				<!-- 模板 #tpl-img-list -->
			</div>
			<div class="clear"></div>
			<?php } ?>

		</div>

		<div class="boxed-footer">
			<input type="hidden" name="cid" value="<?php echo $this->cid ?>">
			<?php if ($this->ccid): ?>
			<input type="hidden" name="ccid" value="<?php echo $this->ccid ?>">
			<?php endif ?>
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
<?php echo static_file('adminer/article.js'); ?>
