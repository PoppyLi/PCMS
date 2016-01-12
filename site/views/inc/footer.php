<?php 
$CI->load->model('Article_model','marticle');
$CI->load->model('Gallery_model','mgallery');
$CI->load->model('Links_model','mlinks');
$CI->load->model('Page_model','mpage');

$platf = list_coltypes(11);
$idea = list_coltypes(3);


$face = $CI->marticle->get_one(array('cid'=>14,'audit'=>1));

$face2 = $CI->marticle->get_one(array('cid'=>15,'audit'=>1));

$where = array('cid'=>16,'audit'=>1);
$CI->db->order_by('id','asc');
$link = $CI->mlinks->get_all($where);

$comit = $CI->mpage->get_one(array('cid'=>17));

?>

<div class="footer">
		<div class="footert">
			<div class="footertm clear w1025">
				<b>合作伙伴：</b>
				<p>
 					<?php for ($i=0;$i<sizeof($link);$i++) { ?>
						<span <?php if ($i==(sizeof($link)-1)) { echo "class='pslast'";} ?>>
							<a href="<?php echo $link[$i]['link']; ?>" target=_blank>
								<?php echo $link[$i]['title']; ?>
							</a>
						</span>
					<?php } ?>
				</p> 
			</div>
		</div>
		<div class="footerm">
			<div class="footermm w1025">
				<div class="fmm-up">
					<ul>
						<li class="fupfli"><a href="<?php echo site_url('welcome'); ?>">首页</a></li>
						<li ><a href="<?php echo site_url('about?ctype='.'1'); ?>">关于我们</a></li>
						<li><a href="<?php echo site_url('invest/idea?ctype='.'5'); ?>">投资管理</a></li>
						<li><a href="<?php echo site_url('weitou/weitou'); ?>">科发微投</a></li>
						<li><a href="<?php echo site_url('project/project'); ?> ">项目投递</a></li>
						<li><a href="<?php echo site_url('case/case?ctype='.'8'); ?>">投资案例</a></li>
						<li><a href="<?php echo site_url('run/run'); ?>">管理团队</a></li>
						<li><a href="<?php echo site_url('news/news?ctype='.'13'); ?>">资讯中心</a></li>
						<li><a href="<?php echo site_url('job/job'); ?> ">人才招聘</a></li>
						<li class="fuplli"><a href="<?php echo site_url('contact/contact'); ?>">联系我们</a></li>
					</ul>
				</div>
				<div class="ffm-down">
					<div class="cominfro">
						<?php echo $comit['content']; ?>
					</div>
					<div class="scan">
						<div class="wrapimg">
							<img src="<?php echo static_file('web/img/'); ?> " alt="">
						</div>
						<p>扫描二维码关注</p>
					</div>
				</div>
			</div>
		</div>
		<div class="footerf">
			<div class="footerfm w1025">
				<p class="ffmp1">copyright ©2015 all right reserved</p>
			</div>
		</div>
</div>