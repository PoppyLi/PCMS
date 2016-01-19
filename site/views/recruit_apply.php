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
          <div class="editor active" id="showtext">          
          <?php echo form_open(site_url('recruit/apply/'.$rec_art['cid'].'/'.$rec_art['id']))?>
          <table class='feedback_table' >
              <tr>
                <td></td>
                <td><?php echo validation_errors('<span style="color:#f00">', '</span>'); ?></td>
              </tr>
              <tr>
                <td class='text'>应聘岗位：</td>
                <td><input type="hidden" name="position" value="<?php echo $rec_art['title']?>"><?php echo $rec_art['title']?></td>
              </tr>
              <tr>
                <td class='text'>姓名：</td>
                <td class='input'><input name='username' type='text' class='input-text' value="<?php echo set_value('username');?>" /><span class='info'>*</span></td>
              </tr>
              <tr>
                <td class='text'>出生年月：</td>
                <td class='input'><input name='birthday' type='text' class='input-text' value="<?php echo set_value('birthday');?>" /></td>
              </tr>
              <tr>
                <td class='text'>籍贯：</td>
                <td class='input'><input name='birthplace' type='text' class='input-text' value="<?php echo set_value('birthplace');?>" /></td>
              </tr>
              <tr>
                <td class='text'>学历：</td>
                <td class='input'><input name='edu' type='text' class='input-text' value="<?php echo set_value('edu');?>" /></td>
              </tr>
              <tr>
                <td class='text'>联系电话：</td>
                <td class='input'><input name='tel' type='text' class='input-text' value="<?php echo set_value('tel');?>" /><span class='info'>*</span></td>
              </tr>
              <tr>
                <td class='text'>个人简介：</td>
                <td class='input'><textarea name='intro' class='textarea-text' cols='50' rows='5'><?php echo set_value('intro');?></textarea></td>
              </tr>
              <tr>
                <td class='text'>工作经历：</td>
                <td class='input'><textarea name='work' class='textarea-text' cols='50' rows='5'><?php echo set_value('work');?></textarea></td>
              </tr>
              <tr>
                <td class='text'>家庭情况：</td>
                <td class='input'><textarea name='family' class='textarea-text' cols='50' rows='5'><?php echo set_value('family');?></textarea></td>
              </tr>
              <tr>
                <td class='text'>详细附件：</td>
                <td class='input'></td>
              </tr>
              <tr>
                <td class='text'>验证码：</td>
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