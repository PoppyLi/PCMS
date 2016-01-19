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
          <?php foreach($rec_list as $v) {?>
            <div class="active" id="joblist">
			       <dl class='list-none metlist'>
              <dt><?php echo $v['title']?>   <span>招聘人数: <?php echo ($v['amount']==0)?'不限制':$v['amount'].'人';?></span><span>发布日期：<?php echo date('Y-m-d',$v['timeline'])?></span><a href="<?php echo site_url('recruit/apply/'.$v['id'])?>" style="float:right">在线应聘</a>  </dt>
              <dd class='list top'>
                <div></div>
                <div><strong> 详细说明 </strong></div>
                <div><?php echo $v['content']?></div>
                <div><strong> 能力要求 </strong></div>
                <div><?php echo $v['requirement']?></div>
              </dd>
            </dl>
		        </div>
          <?php }?>
      </div>
    </div>
    <div class="clear"></div>
  </div>
</div>

<?php $this->load->view('inc/footer')?>