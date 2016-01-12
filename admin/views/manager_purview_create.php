
<div class="btn-group">
	<a href="<?php echo site_url($this->router->class.'/index') ?>" class='btn'> <i class="fa fa-arrow-left"></i> 返回列表</a>
</div>

<?php include_once 'inc_form_errors.php'; ?>

<div class="boxed">
	<h3> <i class="fa fa-plus"></i> <?php echo $title.lang('create'); ?> </h3>
	<?php echo form_open(current_url(),array("class"=>"form-horizontal","id"=>"frm-create")); ?>
		<div class="boxed-inner seamless">

			<div class="control-group">
				<label class="control-label" for="title">权限名称:</label>
				<div class="controls">
					<input type="text" id="title" name="title" value="<?php echo set_value('title') ?>">
					<span class="help-inline"></span>
				</div>
			</div>

			<div class="control-group">
				<label class="control-label" for="cid">使用栏目:</label>

				<div class="controls">
					<input type="hidden" id="cid" name="cid" value="<?php echo set_value('cid') ?>" >
					
					<?php if ($parent_path): ?>
						<?php foreach ($parent_path as $key => $c): ?>
					<a href="#" class="btn btn-primary disabled">
						<?php echo $c['title'] ?> 
					</a>
						<?php endforeach ?>	
					<?php else: ?>

					<div  class="btn-group">
						<a href="#" id="parent-change" class="btn btn-info"> 使用栏目 </a>
					</div>
					<div class="btn-group select hide" id="parent-id-cg">
						<a class="btn" data-toggle="dropdown" href="#">
							<span class="txt"> 选择所属栏目</span> <span class="caret"></span>	
						</a>
						<ul class="dropdown-menu">
							<?php foreach ($cols as $c): ?>
								<li tabindex="-1"  class="<?php echo $c['more'] ? 'dropdown-submenu':'' ?>" >
									<a rel="<?php echo $c['cid'] ?>" id="d<?php echo $c['cid'];?>" data-cl="<?php echo $c['controller'] ?>" href="#" class="<?php echo $c['more'] ? 'dropdown-toggle':'' ?>" onclick="select_change(this)" >
										<?php echo $c['ctitle']; ?>	
									</a>
								</li>
							<?php endforeach ?>
						</ul>
						<span class="help-inline"> 选择栏目 </span>
					</div>
					<?php endif ?>
				</div>
			</div>


			<div class="control-group">
				<label class="control-label" for="model">模型:</label>
				<div class="controls">
					<input type="text" id="model" name="model" value="<?php echo set_value('model') ?>">
					<span class="help-inline"></span>
				</div>
			</div>

			<div class="control-group">
				<label class="control-label" for="method">方法:</label>
				<div class="controls">
					<input type="text" id="method" name="method" value="<?php echo set_value('method') ?>">
					<span class="help-inline">所属模型的方法</span>
				</div>
			</div>
			
			<div class="control-group">
				<label class="control-label" for="status">是否有效:</label>
				<div class="controls">
					<div class='btn-group btn-switch'>
						<a href="#" data-value="1" class="btn <?php echo set_switch('status',1,1,'btn-primary') ?>"> 正常 </a>
						<a href="#" data-value="0" class="btn <?php echo set_switch('status',0,1,'btn-primary') ?>"> 禁用</a>
					</div>
					<input type="hidden" id="status" name="status" value="<?php echo set_value('status',1) ?>">
					<span class="help-inline"></span>
				</div>
			</div>

		</div> <!-- end boxed inner -->

		<div class="boxed-footer">
			<input type="submit" value=" <?php echo lang('submit'); ?> " class='btn btn-primary'>
			<input type="reset" value=' <?php echo lang('reset'); ?> ' class="btn btn-danger"> 
		</div>
	</form>
</div>

<script type="text/javascript" charset="utf-8">

var col_get_url = '<?php echo site_url('/columns/getcols_ajax')?>/';

$(function () {

	$('#parent-change').one('click',function(event){
		event.preventDefault();
		$(this).remove();
		$("#parent-id-cg").css('display', 'inline-block');
	});

	$('#parent-id-cg').delegate(
        'a.dropdown-toggle','mouseover',function(){
            if(!$(this).next().length > 0){
            	(function(prefix,id,fun){
            		now_id = 0;
            		if (!tools.isEmptyValue($('#id').toArray())) {
            			now_id = $('#id').val();
            		};
            		$.get(
            			col_get_url+id
            			,function(data){
				            zimenu = $("#"+prefix+id); // 直接使用参数到闭包,防止外部改变即变量污染
				            menu = '<ul class="dropdown-menu">';
				            li = '';
				            $.each(data,function(i,item){
				            	if (now_id != item.cid) {
				            		if(item.more > 0){
				            			li += '<li  class="dropdown-submenu"> ';
				            		}else{
				            			li += '<li>';
				            		}
				            		li += '<a href="#" data-target="#"';
				            		li += 'tabindex="-1"id="'+prefix+item.cid+'" rel="'+item.cid+'" data-cl="'+item.controller+'" onclick="'+fun+'(this)" ';
				            		if(item.more > 0){
				            			li += ' class="dropdown-toggle" >';
				            		}else{
				            			li += '>';
				            		}
				            		li += item.ctitle+'</a> </li>'
				            	}
				            });
				            menu += li+'</ul>';
				            zimenu.after(menu);
				        }  
			        );
            	})('d',$(this).attr('rel'),'select_change');
            }
            $(this).dropdown();
        } 
    );
});

function select_change(it){
	$('#cid').val($(it).attr('rel'));
	$('#parent-id-cg').children('a.btn').children('span.txt').text($(it).text());
	$('#model').val($(it).attr('data-cl'));
	$('#method').val('index');
}

rules = {
	title: {
		required:true
	},
	model:{
		required:true
	},
	method:{
		required:true
	}
};
messages = {
	title: {
		required : "标题必须存在！"
	},
	method:{
		required: "输入模型!"
	},
	method:{
		required: "输入正确的控制器!"
	}
};
make_validate('frm-create',rules,messages);
</script>
