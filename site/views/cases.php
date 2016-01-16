<?php $this->load->view('inc/header')?>

<div class="sidebar-box">
  <div class="sidebar-con">
    <?php $this->load->view('inc/sidebar-left')?>

    <div class="sidebar-con-right">    
      <div class="sidebar-con-tit">
        <p>当前位置： <a href="<?php echo site_url()?>">网站首页</a> &gt; <a href="<?php echo site_url($parent[0]['identify'])?>">案例展示</a></p>
        <font class="this"><?php echo $content['title'];?></font><span class="this"><?php echo $content['title'];?>&nbsp;</span>
      </div>
      
      <div class="sidebar-con-right-con">        
          <div class="active" id="imglist">
              <ul class='list-none metlist'>
                <?php foreach($ari_list as $k => $v){?>
                <li class="list"><a href="" target="_blank" class="img"><img src="<?php echo UPLOAD_URL.tag_photo($v['photo']); ?>" alt="" width="200" height="150" /></a>
                  <h3><a href="" target="_blank"><?php echo strcut(strip_tags($v['title']),12); ?></a></h3>
                </li>
                <?php }?>
              </ul>
            <div class="clear"></div>
		      </div>
		      <div class="text-center"><?php echo $pages; ?></div>
    </div>
    </div>
    <div class="clear"></div>
  </div>
</div>

<div class="footer-box">
        <div class="foot-nav">
            <a href="/gongsijianjie/index/1.html">公司简介</a>
            <span>|</span>
        <a href="/zhuangxuzhishi/index/6.html">装修知识</a>
            <span>|</span>
        <a href="/anlizhanshi/index/9.html">案例展示</a>
            <span>|</span>
        <a href="/gongsifuwu/index/13.html">公司服务</a>
            <span>|</span>
        <a href="/huanbaobaozhang/index/16.html">环保保障</a>
            <span>|</span>
        <a href="/shejililian/index/20.html">设计理念</a>
            <span>|</span>
        <a href="/zhaoxiannashi/index/22.html">招贤纳士</a>
            <span>|</span>
        <a href="/lianxiwomen/index/23.html">联系我们</a>
        </div>
        
    <p>装饰公司 版权所有 2012-2015 ICP备88888-x</p>
    <p>地址：时代广场1号楼A座1008室&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;电话：0871-55667788</p>
    <!--版权信息-->
    <div class="powered_by_metinfo">
    Powered&nbsp;by&nbsp;<a href="http://www.website.com">装饰公司</a>
    &copy;2012-2015&nbsp;
    <a href="http://www.website.com">http://www.website.com</a>
    </div>
    <!--版权信息结束-->
</div>
</body>
</html>