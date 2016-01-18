<?php $this->load->view('inc/header')?>

<div class="sidebar-box">
  <div class="sidebar-con">
    <?php $this->load->view('inc/sidebar-left')?>
    
    <div class="sidebar-con-right">    
      <div class="sidebar-con-tit">
        <p>当前位置： <a href="<?php echo site_url()?>">网站首页</a> &gt; <a href="<?php echo site_url('company')?>">联系我们</a></p>
        <font class="this"><?php echo $content['title'];?></font><span class="this"><?php echo $content['title'];?>&nbsp;</span>
      </div>
      
      <div class="sidebar-con-right-con">        
        <div class="editor active" id="showtext">
          <?php $this->load->view('form_errors');?>
        	<?php echo form_open(site_url('feedback'))?>
            <table class='feedback_table' >
              <tr>
                <td class='text'>联系人</td>
                <td class='input'><input name='username' type='text' size='30' class='input-text' /><span class='info'></span><span></span></td>
              </tr>
              <tr>
                <td class='text'>电话</td>
                <td class='input'><input name='tel' type='text' size='30' class='input-text' /><span class='info'></span><span></span></td>
              </tr>
              <tr>
                <td class='text'>邮箱</td>
                <td class='input'><input name='email' type='text' size='30' class='input-text' /><span class='info'></span><span></span></td>
              </tr>
              <tr>
                <td class='text'>反馈内容</td>
                <td class='input'><textarea name='content' class='textarea-text' cols='50' rows='5'></textarea><span class='info'>*</span><span> 请详细描述</span></td>
              </tr>
              <tr>
                <td class='text'>验证码</td>
                <td class='input'><input name="captchas" id="captchas" type='text' class='code' size='6' maxlength='8' style='width:50px' /><img src="<?php echo site_url('captchas?t='.time()); ?>" class="captchas" style="cursor:pointer"></td>
              </tr>
              <tr>  
                <td class='text'></td>
                <td class='submint'><input type='submit' name='Submit' value='提交信息' class='submit button orange'></td>
              </tr>
            </table>
          </form>
            <div class="clear"></div>
        </div>
      </div>
    </div>
    <div class="clear"></div>
  </div>
</div>

<?php $this->load->view('inc/footer')?>