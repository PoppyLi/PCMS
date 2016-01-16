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
        <div class="active" id="shownews">
          <h1 class="title"><?php echo $article['title'];?></h1>
          <p class="clicks_addtime">点击次数：<span><?php echo $article['click'];?></span>&nbsp;&nbsp;更新时间：<?php echo date('Y-m-d H:i:s',$article['timeline'])?></p>
          <div class="editor">
            <?php echo($article['content']);?>
            <div class="clear"></div>
        </div>
        <div class="xqtext">
          <div class="pn">
              <p> <a href="<?php echo isset($article['prev_id'])?site_url('decoration/article/'.$article['prev_id']):"javascript:void(0);"; ?>">
    上一篇： <?php echo isset($article['prev_id'])?$article['prev_title']:"无"; ?></a> </p>
              <p> <a href="<?php echo isset($article['next_id'])?site_url('decoration/article/'.$article['next_id']):"javascript:void(0);"; ?>">
    下一篇： <?php echo isset($article['next_id'])?$article['next_title']:"无"; ?></a></p>
          </div>
        </div>
			<div class="met_hits">
			  <div class='metjiathis'>
			    <div class="jiathis_style">
                <span class="jiathis_txt">分享到：</span><a class="jiathis_button_icons_1"></a><a class="jiathis_button_icons_2"></a><a class="jiathis_button_icons_3"></a><a class="jiathis_button_icons_4"></a><a href="http://www.jiathis.com/share" class="jiathis jiathis_txt jtico jtico_jiathis" target="_blank"></a></div>
		      <script type="text/javascript" src="http://v3.jiathis.com/code/jia.js?uid=1346378669840136" charset="utf-8"></script>
              </div>
          </div>
          <div class="met_page"></div>
        </div>
      </div>
    </div>
    <div class="clear"></div>
  </div>
</div>

<?php $this->load->view('inc/footer')?>