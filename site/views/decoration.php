<?php $this->load->view('inc/header')?>

<div class="sidebar-box">
  <div class="sidebar-con">
    <?php $this->load->view('inc/sidebar-left')?>
    
    <div class="sidebar-con-right">    
      <div class="sidebar-con-tit">
        <p>当前位置： <a href="<?php echo site_url()?>">网站首页</a> &gt; <a href="<?php echo site_url($parent[0]['identify'])?>">装修知识</a></p>
        <font class="this"><?php echo $content['title'];?></font><span class="this"><?php echo $content['title'];?>&nbsp;</span>
      </div>

      <div class="sidebar-con-right-con">        
          <?php foreach ($ari_list as $k => $v) { ?>
            <div class="newsinfo">
                <a href="<?php echo site_url('decoration/article/'.$v['id'])?>"><img src="<?php echo UPLOAD_URL.tag_photo($v['photo']); ?>" alt="" width="134" height="94"></a>
                <div class="nwstext">
                    <a href="<?php echo site_url('decoration/article/'.$v['id'])?>"><h4><?php echo strcut(strip_tags($v['title']),30); ?></h4></a>
                    <p><?php echo strcut(strip_tags($v['content']),80); ?></p>
                    <div class="check"><a href="<?php echo site_url('decoration/article/'.$v['id'])?>">查看详情</a></div>
                </div>
            </div>
            <?php } ?>
      </div>
      <div class="text-center">
        <?php echo $pages; ?>
      </div>
    </div>
    <div class="clear"></div>
  </div>
</div>

<?php $this->load->view('inc/footer')?>