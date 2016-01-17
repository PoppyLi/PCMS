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
                <li class="list"><a href="<?php echo site_url('Cases/article/'.$v['id'])?>" class="img"><img src="<?php echo UPLOAD_URL.tag_photo($v['photo']); ?>" alt="" width="200" height="150" /></a>
                  <h3><a href="<?php echo site_url('Cases/article/'.$v['id'])?>">【<?php echo one_ctype($v['ctype'])['title']?>】<?php echo strcut(strip_tags($v['title']),12); ?></a></h3>
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

<?php $this->load->view('inc/footer')?>