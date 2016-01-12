<div class="btn-group">
	<a href="<?php echo site_url('acount/create')?>" class='btn btn-primary'> <i class="fa fa-plus"></i> 添加用户 </a>
	
</div>

<?php include_once 'inc_ui_limit.php'; ?>



<div class="clearfix"></div>

<div class="boxed">
	<div class="boxed-inner seamless">
		<table class="table table-striped table-hover select-list">
			<thead>
				<tr>
					<th class="width-small"><input id='selectbox-all' type="checkbox" > </th>
					<th>用户名</th>
					<th>手机号码</th>
					<th>密码</th>
					<th>证件号码</th>
<!-- 					<th>单位名称</th>
					<th>地址</th> -->
					<th>提交时间</th>
				</tr>
			</thead>
			<tbody class="sort-list">
				<?php foreach ($list as $v):?>
					<tr data-id="<?php echo $v['id'] ?>" data-sort="<?php echo $v['sort_id'] ?>">
						<td><input class="select-it" type="checkbox" value="<?php echo $v['id']; ?>" ></td>
					<td><?php echo $v['title'] ?></td>
					<td> <?php echo $v['tel'] ?> </td>
					<td> <?php echo $v['pwd'] ?> </td>
					<td> <?php echo $v['birthplace'] ?> </td>
<!-- 					<td> <?php echo $v['birthplace'] ?> </td>
					<td> <?php echo $v['place'] ?> </td> -->
					<td> <?php echo  date("Y/m/d H:i:s",$v['timeline']); ?> </td>
					<td style="text-align:right;">
						<div class="btn-group">
							<?php include 'inc_ui_audit.php'; ?>
							<a class='btn btn-small' href=" <?php echo site_url( $this->router->class.'/edit/'.$v['id']) ?> " title="查看"> <i class="fa fa-eye"></i></a>
							<a class='btn btn-danger btn-small btn-del' href="#" data-id="<?php echo $v['id'] ?>" title=" <?php echo lang('del') ?>"> <i class="fa fa-times"></i></a>
						</div>
					</td>
				</tr>
				<?php endforeach;?>
			</tbody>
		</table>
	</div>
</div>

<div class="btn-group">
	<a id='select-all' class='btn' href="#"> <i class="fa fa-check-square-o"></i> <?php echo lang('select_all') ?> </a>
	<a id='unselect-all' class='btn hide' href="#"> <i class="fa fa-square-o"></i> <?php echo lang('unselect') ?> </a>
	<a id="btn-del" class='btn btn-danger' href="#"> <i class="fa fa-times"></i> <?php echo lang('del') ?> </a>
	<a id="btn-audit" class='btn' href="#" data-audit='1'><?php echo lang('audit') ?></a>
	<a id="btn-audit" class='btn' href="#"  data-audit='0'>取消审核</a>
</div>

<?php echo $pages; ?>

<script>
acount = {
	url_del: "<?php echo site_url('acount/delete'); ?>"
	,url_audit: "<?php echo site_url('acount/audit'); ?>"	
	,url_sortid: "<?php echo site_url('acount/sortid'); ?>"
};

$(function(){
	ui.btn_delete(acount.url_del);		// 删除
	ui.btn_audit(acount.url_audit);	// 审核
	ui.sortable(acount.url_sortid);	// 排序
});
</script>

