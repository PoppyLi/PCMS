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
                        <li><a href="<?php echo site_url()?>">首 页</a></li>
                    </ul>
                </li>

                <?php foreach ($list as $key => $value) {?>
                    <li><a href=""><?php echo $list[$key]['title']?></a>
                    <ul>
                        <?php foreach ($value['child'] as $k => $v) {?>
                            <li><a href="<?php echo site_url($list[$key]['identify'].'/index/'.$value['child'][$k]['id'])?>"><?php echo $value['child'][$k]['title']?></a></li>
                        <?php }?>
                    </ul>
                <?php } ?>
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