<?php $this->load->view('inc/header')?>

<div class="main-box">
  <div class="main-topblock"></div>
  <div class="main-con not-marginleft">
    <div class="main-con-top">
      <div class="main-con-bot">
        <div class="main-con-box">
          <div class="main-con-img" style="background-image:url(<?php echo UPLOAD_URL.tag_photo($art1[0]['photo']);?>);"></div>
          <div class="main-con-txt">
              <a href="<?php echo site_url('decoration/index/'.$art1[0]['cid'])?>" class="title" target="_blank"><h3>装修知识</h3><span>/</span><font>Zhuang xiu</font></a>
              <?php foreach($art1 as $v){?>
                <a href="<?php echo site_url('decoration/article/'.$v['id'])?>" class="once" title="<?php echo($v['title'])?>" target="_blank"><?php echo($v['title'])?></a>
              <?php }?>
          </div>
          <div class="clear"></div>
        </div>
      </div>
    </div>
  </div>

  <div class="main-con">
    <div class="main-con-top">
      <div class="main-con-bot">
        <div class="main-con-box">
          <div class="main-con-img" style="background-image:url(<?php echo UPLOAD_URL.tag_photo($art2[0]['photo']);?>);"></div>
          <div class="main-con-txt">
            <a href="<?php echo site_url('decoration/index/'.$art2[0]['cid'])?>" class="title" target="_blank"><h3>风水指南</h3><span>/</span><font>Feng Shui</font></a>
            <?php foreach($art2 as $v){?>
                <a href="<?php echo site_url('decoration/article/'.$v['id'])?>" class="once" title="<?php echo($v['title'])?>" target="_blank"><?php echo($v['title'])?></a>
            <?php }?>
          </div>
          <div class="clear"></div>
        </div>
      </div>
    </div>
  </div>
  
  <div class="main-con">
    <div class="main-con-top">
      <div class="main-con-bot">
        <div class="main-con-box">
          <div class="main-con-img" style="background-image:url(<?php echo UPLOAD_URL.tag_photo($art3[0]['photo']);?>);"></div>
          <div class="main-con-txt">
            <a href="<?php echo site_url('decoration/index/'.$art3[0]['cid'])?>" class="title" target="_blank"><h3>设计指南</h3><span>/</span><font>Design</font></a>
                <?php foreach($art3 as $v){?>
                <a href="<?php echo site_url('decoration/article/'.$v['id'])?>" class="once" title="<?php echo($v['title'])?>" target="_blank"><?php echo($v['title'])?></a>
            <?php }?>
          </div>
          <div class="clear"></div>
        </div>
      </div>
    </div>
  </div>
  <div class="clear"></div>

  <div class="main-pro">
    <div class="main-pro-top">
      <div class="main-pro-tit">
        <a href="<?php echo site_url('Cases/index/21')?>" class="more-pro" target="_blank">更多 <font>>></font></a>
        <a href="<?php echo site_url('Cases/index/21')?>" class="title" target="_blank">案例展示<font> / </font><span>Cases</span></a>
      </div>
      <div class="main-pro-con" style="height:160px;">
        <div class="pro-left"></div>
        <div class="pro-center">
          <div class="pro-move" display="0">
            <?php foreach ($cases as $key => $value) {?>
              <a href="<?php echo site_url('Cases/article/'.$value['id'])?>" title="<?php echo $value['title']?>" target="_blank">
                <img src="<?php echo UPLOAD_URL.tag_photo($value['photo']);?>" width="200" height="150" alt="" />
                <h3><?php echo $value['title']?></h3>
              </a>
            <?php }?>          
          </div> 
          <div class="clear"></div>
        </div>
        <div class="pro-right" onselectstart="return false;"></div>
        <div class="clear"></div>
      </div>   
          
            <div class="main-pro-tit link-xian">
        <a href="javascript:void(0)" class="title">友情链接 <span>LINKS ▼</span></a>
      </div>
      <div class="main-link">
        <ul class="main-link-txt">
                              <li><a href="http://www.baidu.com" target="_blank">百度</a></li>
                              <li>|</li>
                    <li><a href="http://www.163.com" target="_blank">网易</a></li>
                              <li>|</li>
                    <li><a href="http://www.qq.com" target="_blank">腾讯</a></li>
                              <li>|</li>
                    <li><a href="http://www.sina.com.cn" target="_blank">新浪</a></li>
          		</ul>
        <div class="clear"></div>
      </div>
          </div>
  </div>
</div>
<?php $this->load->view('inc/footer')?>