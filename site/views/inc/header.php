<?php 


$about = list_coltypes(2);

$invest = list_coltypes(3);

$case = list_coltypes(6);

$news_all = list_coltypes(8);
// var_dump($life_ctypes);
$aid = $CI->session->userdata('aid');
$name = $CI->session->userdata('name');
// echo $aid;
// echo $name;


?>

<div class="header">
	<div class="header-main">
		<div class="headert">
			<div class="headertm clear w1025">
				<!-- <p class="htp1">·   热烈祝贺本公司新版电脑上线运营！！！</p> -->
				<p class="htp1"><a href="<?php echo site_url('login'); ?> "><span class="log">登陆</span></a></p>
				<p class="htp2">热线：086-571-8825 0328</p>
				<?php if($aid == ''){ ?>
				<!-- <p class="htp4"><a href="<?//php echo site_url('login'); ?> "><span class="log">登陆</span></a></p> -->

				<? }else{ ?>
<!-- 					<p class="htp1">·   欢迎登陆，亲爱的投资人<?php echo $name;?></p>
					<p class="htp4"><a href="<?php echo site_url('out'); ?> " class="">退出</a></p> -->
	            <?php }?>


				
				
			</div>
		</div>
		<div class="headerf clear w1025">
			<div class="logo"><a href="<?php echo site_url(); ?>"></a></div>
			<div class="navagation">
				<ul class="clear">
					<li>
						<a href="<?php echo site_url('welcome'); ?> ">科发首页</a>

					</li>
					<li><a href="<?php echo site_url('about?ctype='.'1'); ?> ">关于我们</a>
						<div class="subnav">
							<?php foreach ($about as $k => $v) { ?>
								<a href="<?php echo site_url('about?ctype='.$v['id']); ?>"><?php echo $v['title']; ?></a>
							<?php } ?>
						</div>
					</li>
					<li><a href="<?php echo site_url('invest/idea?ctype='.'5'); ?>">投资管理</a>
						<div class="subnav">
							<?php foreach ($invest as $k => $v) { ?>
								<a href="<?php echo site_url('invest/idea?ctype='.$v['id']); ?>"><?php echo $v['title']; ?></a>
							<?php } ?>
						</div>
					</li>
					<!-- <li><a href="<?//php echo site_url('weitou/weitou'); ?> ">科发微投</a></li> -->
					<li><a href="<?php echo site_url('project/project'); ?> ">项目投递</a></li>

					<li><a href="<?php echo site_url('case/case?ctype='.'8'); ?> ">投资案例</a>
						<div class="subnav">
							<?php foreach ($case as $k => $v) { ?>
								<a href="<?php echo site_url('case/case?ctype='.$v['id']); ?>"><?php echo $v['title']; ?></a>
							<?php } ?>
						</div>
					</li>
					<li><a href="<?php echo site_url('run/run'); ?> ">管理团队</a></li>

					<li><a href="<?php echo site_url('user?id=82'); ?> ">我的投资</a>
<!-- 						<div class="subnav">
							<a href="<?php echo site_url('user'); ?>">个人中心</a>
							<a href="<?php echo site_url('user/uslf2'); ?>">月息通</a>
							<a href="<?php echo site_url('user/uslf3'); ?>">月息通</a>
							<a href="<?php echo site_url('user/uslf4'); ?>">月息通</a>
							<a href="<?php echo site_url('user/uslf5'); ?>">月息通</a>
							<a href="<?php echo site_url('user/uslf6'); ?>">月息通</a>
							
						</div> -->

					</li>

					<li><a href="<?php echo site_url('news/news?ctype='.'13'); ?> ">资讯中心</a>
						<div class="subnav">
							<?php foreach ($news_all as $k => $v) { ?>
								<a href="<?php echo site_url('news/news?ctype='.$v['id']); ?>"><?php echo $v['title']; ?></a>
							<?php } ?>
						</div>
					</li>
					<li><a href="<?php echo site_url('job/job'); ?> ">人才招聘</a>
						<div class="subnav">
							<a href="<?php echo site_url('job/job'); ?>">人才招聘</a>
							<a href="<?php echo site_url('job/linian'); ?>">人才理念</a>
							
						</div>

					</li>
					<li><a href="<?php echo site_url('contact/contact'); ?> ">联系我们</a></li>
				</ul>
			</div>
		</div>
	</div>
</div>
	
<script type="text/javascript">
    // $(".log").click(function(){
    //     $(".clearbox").fadeIn(600,function(){
    //         $(".login").fadeIn(600)
    //     })
    // })
    // $(".getlog").click(function(){
    // 	window.location.href="<?php echo site_url('user'); ?>";
    // })
    // $(".close").eq(0).click(function(){
    //     $(".login").fadeOut(600,function(){
    //         $(".clearbox").fadeOut(600)
    //     });
    // });
    // $(".forget").click(function(){
    // 	$(".login").fadeOut(600,function(){
    // 		$(".recode").fadeIn(600);
    // 	})
    // })
    // $(".close").eq(1).click(function(){
    //     $(".recode").fadeOut(600,function(){
    //     $(".clearbox").fadeOut(600);
    //     });
    // });
    // $(".reg").click(function(){
    //     $(".clearbox").fadeIn(600,function(){
    //     $(".register").fadeIn(600)
    //     })
    // })
    // $(".close").eq(2).click(function(){
    //     $(".register").fadeOut(600,function(){
    //     $(".clearbox").fadeOut(600);
    //     });
    // });
</script>