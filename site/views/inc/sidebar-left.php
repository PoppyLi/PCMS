    <div class="sidebar-con-left">
        <div class="sidebar-con-tit">
            <div class="sidebar-con-box"><font class="this"><?php echo $parent[0]['title']?></font><span class="this"><?php echo $parent[0]['identify']?></span></div>
        </div>
        <div class="sidebar-con-left-nav">
            <ul>
                <?php foreach ($parent as $key => $value) {
                    if($key == 0) continue;
                ?>                
                    <li>
                        <a href="<?php echo site_url($parent[0]['identify'].'/index/'.$parent[$key]['id'])?>"><?php echo $parent[$key]['title'];?></a>
                    </li>
                <?php }?>
            </ul>
            <div class="clear"></div>  
        </div>

        <div class="sidebar-con-tit">
            <div class="sidebar-con-box"><font class="this">联系方式</font><span class="this">CONTACT&nbsp;</span></div>
        </div>
        <div class="sidebar-con-left-con">
            <?php echo $sidebar['content'];?>
        </div>
    </div>