<!DOCTYPE HTML>
<html>
<head>
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta charset="utf-8" />
<title><?php echo $header['title']?></title>
<meta name="description" content="<?php echo $header['intro']?>" />
<meta name="keywords" content="<?php echo $header['tags']?>" />
<link rel="stylesheet" type="text/css" href="/static/web/css/style.css" />
<link rel="stylesheet" type="text/css" href="/static/web/css/style.css" />
<script type="text/javascript" src="/static/js/jquery.min.js"></script>
<script type="text/javascript" src="/static/web/js/metinfo_ui.js"></script>
<script type="text/javascript" src="/static/web/js/fun.inc.js"></script>
<script type="text/javascript" src="/static/web/js/metinfo.js"></script>
<!--[if IE]>
<script type="text/javascript" src="/static/web/js/html5.js"></script>
<![endif]-->
</head>

<body>
<div class="header-box">
    <div class="header-top">
        <div class="top-nav">
            <span class="i"></span>
            <a href="javascript:void(0)" onclick='SetHome(this,window.location,"浏览器不支持此功能，请手动设置！");'>设为首页</a> | <a href="javascript:void(0)" onclick='addFavorite("浏览器不支持此功能，请手动设置！");'>收藏本站</a>
        </div>
    </div>

    <div class="header-con">
        <a href="" id="web_logo" title="XX公司"><?php echo $header['title']?><i>xxgs.com</i></a>
        <div class="nav-box">
            <ul>
                <li class="navdown"><a href="">首 页</a>
                    <ul>
                        <li><a href="">首 页</a></li>
                    </ul>
                </li>
				<li><a href="<?php echo site_url('company')?>">公司简介</a>
                    <ul>
                        <?php foreach ($parent as $key => $value) {?>
                            <li><a href="<?php echo site_url('company/index/'.$parent[$key]['id'])?>"><?php echo $parent[$key]['title'];?></a></li>
                        <?php }?>
                    </ul>
                </li>
                <li>
                <a href="<?php echo site_url('decoration')?>">装修知识</a>
                <ul>
                <li><a href="<?php echo site_url('decoration')?>">装修知识</a></li>
                                <li><a href="/zhuangxuzhishi/index/7.html">设计指南</a></li>
                                <li><a href="/zhuangxuzhishi/index/8.html">风水指南</a></li>
                                </ul>
                </li>
                                <li>
                <a href="<?php echo site_url('cases')?>">案例展示</a>
                <ul>
                <li><a href="<?php echo site_url('cases')?>">案例展示</a></li>
                                <li><a href="/anlizhanshi/index/10.html">家装案例</a></li>
                                <li><a href="/anlizhanshi/index/11.html">办公室案例</a></li>
                                <li><a href="/anlizhanshi/index/12.html">专卖店案例</a></li>
                                </ul>
                </li>
                                <li>
                <a href="<?php echo site_url('service')?>">公司服务</a>
                <ul>
                <li><a href="<?php echo site_url('service')?>">公司服务</a></li>
                                <li><a href="/gongsifuwu/index/32.html">服务项目</a></li>
                                <li><a href="/gongsifuwu/index/15.html">服务流程</a></li>
                                </ul>
                </li>
                                <li>
                <a href="<?php echo site_url('guarantee')?>">环保保障</a>
                <ul>
                <li><a href="<?php echo site_url('guarantee')?>">环保保障</a></li>
                                <li><a href="/huanbaobaozhang/index/17.html">环境质量保障</a></li>
                                <li><a href="/huanbaobaozhang/index/18.html">施工保障</a></li>
                                <li><a href="/huanbaobaozhang/index/19.html">施工标准</a></li>
                                </ul>
                </li>
                                <li>
                <a href="<?php echo site_url('design')?>">设计理念</a>
                <ul>
                <li><a href="<?php echo site_url('design')?>">设计理念</a></li>
                                <li><a href="/shejililian/index/21.html">五大风格</a></li>
                                </ul>
                </li>
                                <li>
                <a href="<?php echo site_url('recruit')?>">招贤纳士</a>
                <ul>
                <li><a href="<?php echo site_url('recruit')?>">招贤纳士</a></li>
                                </ul>
                </li>
                                <li>
                <a href="<?php echo site_url('contact')?>">联系我们</a>
                <ul>
                <li><a href="<?php echo site_url('contact')?>">联系我们</a></li>
                                <li><a href="/lianxiwomen/index/24.html">在线反馈</a></li>
                                </ul>
                </li>
                            </ul>
                    </div>
    </div>
</div>

<div class="banner-box">
    <div class="banmove">
        <?php foreach($banner as $k => $v) :?>
            <a href="javascript:void(0)" style="background:url('<?php echo UPLOAD_URL.tag_photo($v['photo']); ?>') no-repeat center center;"></a>
        <?php endforeach?>
    </div>
    <div class="banmun"></div>
    <div class="banerbot"></div>
</div>