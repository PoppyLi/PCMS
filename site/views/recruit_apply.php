<?php $this->load->view('inc/header')?>

<div class="sidebar-box">
  <div class="sidebar-con">
    <?php $this->load->view('inc/sidebar-left')?>

    <div class="sidebar-con-right">    
      <div class="sidebar-con-tit">
        <p>当前位置： <a href="">网站首页</a> &gt; <a href="<?php echo site_url('recruit')?>">招贤纳士</a></p>
        <font class="this">招贤纳士</font><span class="this">Join Us</span>
      </div>
      
      <div class="sidebar-con-right-con">
          在线应聘
      </div>
    </div>
    <div class="clear"></div>
  </div>
</div>

<?php $this->load->view('inc/footer')?>