<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

	<div class=" boxed span5">
		<div class="boxed-inner">


			<h3> <i class="fa fa-calendar"></i> 按日期查找</h3>
			
			<div class="control-group ">
				<div class="form-inline">
					<input type="text" id="datepicker" class="datepicker" value="<?php echo datetime_now(false); ?> " data-date-format="yyyy/mm/dd" id="dp2" >
					<a href="#" class="btn" id="today"> 今日 </a>
				</div>
			</div>

			<div class="clear"></div>

			<div class="btn-group">
				<span class="btn btn-success">
					<span class="fa fa-upload"></span>
					<span> <?php echo lang('upload_file') ?> </span>
					<input class="fileupload" type="file" name="files[]"  accept="" multiple="">
				</span>
			</div>
			
			<div class="clearfix"></div>
			<p></p>
		</div>
	</div>

<div class="clearfix"></div>
<p></p>

	<div class="boxed ">
		<div class="boxed-inner">
			<h3> <i class="fa fa-list"></i> 列表</h3>
			<div id="js-img-list-f" class="js-img-list-f">
				<!-- 模板 #tpl-img-list -->
			</div>

			<script id="tpl-img-list" type="text/html">
			<%for(i = 0; i < list.length; i ++) {%>
			<div class="img-list js-goal pull-left">
				<%if(list[i].type.match('^image')){%>
				<a href="<%=upload_url+list[i].url%>" class="fancybox-img">
					<img src="<%=upload_url+list[i].thumb%>" alt="<%list[i].name%>">
				</a>
				<%}else{%>
				<a href="<%=upload_url+list[i].url%>">
					<%=list[i].name%><br/><%=list[i].size/1000%>KB	
				</a>
				<%}%>
				<div class="img-list-action">
					<%if(list[i].type.match('^image')){%>
					<a href="#" class="pull-left btn-edit" data-crop="<%=list[i].id%>" title="编辑" ><i class="fa fa-pencil"></i></a>
					<%}%>
					<a href="#" class="pull-right btn-del" data-del="<%=list[i].id%>" title="删除"><i class="fa fa-times"></i></a>
					<div class="clearfix"></div>
				</div>
			</div>
			<%}%>
			</script>

			<div class="clearfix"></div>
			<p></p>
		</div>
	</div>

<?php 
echo static_file('bootstrap-datepicker.css');
echo static_file('bootstrap-datepicker.js');
echo static_file('locales/bootstrap-datepicker.zh-CN.js');
echo static_file('jquery.fancybox.css');
?>

<?php 
include_once 'inc_ui_media.php';
echo static_file('adminer/media_index.js');
?>
