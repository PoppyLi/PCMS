
<div class="btn-group"><a href="<?php echo site_url('recruit_apply/index');?>" class="btn"> <i class="fa fa-arrow-left"></i> <?php echo lang('back_list')?> </a></div>

<?php include_once 'inc_form_errors.php'; ?>

<?php echo form_open(current_url(), array('class' => 'form-horizontal', 'id' => 'frm-edit')); ?>
	<div class="boxed">
		<h3> <i class="fa fa-eye"></i> 在线应聘<span class="badge badge-success pull-right"><?php echo $title; ?></span></h3>
		<div class="boxed-inner seamless">

			<div class="control-group">
				<label for="name" class="control-label">应聘职位：</label>
				<div class="controls">
					<?php echo $it['position'] ?>
					<span class="help-inline"></span>
				</div>
			</div>

			<div class="control-group">
				<label for="name" class="control-label">姓名：</label>
				<div class="controls">
					<?php echo $it['username'] ?>
					<span class="help-inline"></span>
				</div>
			</div>

			<div class="control-group">
				<label for="birthday" class="control-label">出生年月：</label>
				<div class="controls">
					<?php echo $it['birthday'] ?>
					<span class="help-inline"></span>
				</div>
			</div>

			<div class="control-group">
				<label for="birthplace" class="control-label">籍贯：</label>
				<div class="controls">
					<?php echo $it['birthplace'] ?>
					<span class="help-inline"></span>
				</div>
			</div>

			<div class="control-group">
				<label for="edu" class="control-label">学历：</label>
				<div class="controls">
					<?php echo $it['edu'] ?>
					<span class="help-inline"></span>
				</div>
			</div>

			<div class="control-group">
				<label for="tel" class="control-label">联系方式：</label>
				<div class="controls">
					<?php echo $it['tel'] ?>
					<span class="help-inline"></span>
				</div>
			</div>

			<div class="control-group">
				<label for="intro" class="control-label">个人简介：</label>
				<div class="controls">
					<?php echo $it['intro'] ?>
					<span class="help-inline"></span>
				</div>
			</div>

			<div class="control-group">
				<label for="work" class="control-label">工作经历：</label>
				<div class="controls">
					<?php echo $it['work'] ?>
					<span class="help-inline"></span>
				</div>
			</div>

			<div class="control-group">
				<label for="family" class="control-label">家庭情况：</label>
				<div class="controls">
					<?php echo $it['family'] ?>
					<span class="help-inline"></span>
				</div>
			</div>

 			<div class="control-group">
				<label for="file" class="control-label">附件下载：</label>
				<div class="controls">
					<?php if(empty($it['file'])){?>
						(没有上传)
					<?php } else { ?>
						<a href="<?php echo UPLOAD_URL.'resume/'.$it['file']; ?>" target="_blank">点击下载</a>
					<?php } ?>
					<span class="help-inline"></span>
				</div>
			</div>

			<div class="control-group">
				<label for="thename" class="control-label">提交时间：</label>
				<div class="controls">
					<?php echo mdate("%Y/%m/%d %h:%i:%s" ,$it['timeline']); ?>
					<span class="help-inline"></span>
				</div>
			</div>
		</div>
	</div>
</form>

<?php include_once 'inc_ui_ueditor.php'; ?>
<script type="text/javascript">
ui.editor_create('editor_id');
</script>
