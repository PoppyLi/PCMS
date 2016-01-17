<?php $this->load->view('inc/header')?>

<div class="sidebar-box">
  <div class="sidebar-con">
    <?php $this->load->view('inc/sidebar-left')?>
    
    <div class="sidebar-con-right">    
      <div class="sidebar-con-tit">
        <p>当前位置： <a href="<?php echo site_url()?>">网站首页</a> &gt; <a href="<?php echo site_url('company')?>">设计理念</a></p>
        <font class="this"><?php echo $content['title'];?></font><span class="this"><?php echo $content['title'];?>&nbsp;</span>
      </div>
      
      <div class="sidebar-con-right-con">        
        <div class="editor active" id="showtext">
        	<?php echo $content['content'];?>
        	<div class="clear"></div>
        </div>
      </div>
    </div>
    <div class="clear"></div>
  </div>
</div>

<?php $this->load->view('inc/footer')?>