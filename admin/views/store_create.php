<div class="btn-group">
    <a href="<?php echo site_urlc($this->class.'/index')?>" class='btn'> <i class="fa fa-arrow-left"></i> <?php echo lang('back_list') ?></a>
</div>

<?php include_once 'inc_form_errors.php'; ?>

<div class="boxed">
    <h3> <i class="fa fa-pencil"></i> <span class="badge badge-success pull-right"><?php echo $title; ?></span> <?php echo lang('add') ?></h3>
    <?php echo form_open(current_urlc(),array("class"=>"form-horizontal","id"=>"frm-create")); ?>

    <div class="boxed-inner seamless">
        <div class="control-group">
            <label class="control-label" for="title"> 标题： </label>
            <div class="controls">
                <input type="text" id="title" name="title" x-webkit-speech value="<?php echo set_value('title'); ?>">
                <!-- <a href="#seo-modal" role="button" class="btn btn-info" data-toggle="modal"><?php echo lang('seo') ?></a> -->
            </div>
        </div>


        <div class="control-group">
            <label class="control-label" for="addr"> 地址： </label>
            <div class="controls">
                <input type="text" id="addr" name="addr" x-webkit-speech value="<?php echo set_value('addr'); ?>">
            </div>
        </div>

        <div class="control-group">
            <label class="control-label" for="postcode"> 邮政编码： </label>
            <div class="controls">
                <input type="text" id="postcode" name="postcode" x-webkit-speech value="<?php echo set_value('postcode'); ?>">
            </div>
        </div>

        <div class="control-group">
            <label class="control-label" for="tel"> 电话： </label>
            <div class="controls">
                <input type="text" id="tel" name="tel" x-webkit-speech value="<?php echo set_value('tel'); ?>">
            </div>
        </div>

        <div class="control-group">
            <label class="control-label" for="fox"> 传真： </label>
            <div class="controls">
                <input type="text" id="fox" name="fox" x-webkit-speech value="<?php echo set_value('fox'); ?>">
            </div>
        </div>

        <div class="control-group">
            <label class="control-label" for="point"> 坐标(经度/纬度) </label>
            <div class="controls">
                <input type="text" id="pointlong" name="pointlong" x-webkit-speech value="<?php echo set_value('pointlong'); ?>">
                <input type="text" id="pointlat" name="pointlat" x-webkit-speech value="<?php echo set_value('pointlat'); ?>">
            </div>
        </div>

        <div class="control-group">
            <label class="control-label" for="maptitle"> 地图标题： </label>
            <div class="controls">
                <input type="text" id="maptitle" name="maptitle" x-webkit-speech value="<?php echo set_value('maptitle'); ?>">
            </div>
        </div>


        <!-- 弹出 -->
        <div id="seo-modal" class="modal hide fade">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="fa fa-times"></i></button>
                <h3> <i class="fa fa-info-circle"></i><?php echo lang('seo') ?> </h3>
            </div>
            <div class="modal-body seamless">

                <div class="control-group">
                    <label for="title_seo" class="control-label"><?php echo lang('title_seo') ?></label>
                    <div class="controls">
                        <input type="text" id="title_seo" name="title_seo" x-webkit-speech value="<?php echo set_value('title_seo'); ?>">
                        <span class="help-inline"></span>
                    </div>
                </div>

                <div class="control-group">
                    <label class="control-label" for="tags"><?php echo lang('tag') ?></label>
                    <div class="controls">
                        <input type="text" id="tags" name="tags" value="<?php echo set_value('tags'); ?>">
                        <span class="help-inline">使用英文标点`,`隔开</span>
                    </div>
                </div>

                <div class="control-group">
                    <label for="intro"  class="control-label"><?php echo lang('intro') ?></label>
                    <div class="controls">
                        <textarea name="intro" rows='8' class='span4'><?php echo set_value('intro'); ?></textarea>
                        <span class="help-inline"></span>
                    </div>
                </div>

            </div>
            <div class="modal-footer">
                <a href="#"  data-dismiss="modal" aria-hidden="true" class="btn"><?php echo lang('close') ?></a>
            </div>
        </div>

        <!-- ctype -->
        <?php if ($ctype = list_coltypes($this->cid)) { ?>
        <div class="control-group">
            <label class="control-label" for="status"> 所属分类:</label>
            <div class="controls">
                <?php 
                    echo ui_btn_select('ctype',set_value("ctype"),$ctype);
                ?>
                <span class="help-inline"></span>
            </div>
        </div>
        <?php } ?>

        <!-- 图片上传 -->
        <div class="control-group">
            <label for="img" class="control-label">PC站标题：</label>
            <div class="controls">
                <div class="btn-group">
                    <span class="btn btn-success">
                        <i class="fa fa-upload"></i>
                        <span> <?php echo lang('upload_file') ?> </span>
                        <input class="fileupload" type="file"  accept="" multiple="">
                    </span>
                    <input type="hidden" name="photo" class="form-upload" data-more="1" value="<?php echo set_value('photo'); ?>">
                    <input type="hidden" name="thumb" class="form-upload-thumb" value="<?php echo set_value('thumb'); ?>">
                </div>
            </div>
        </div>
        <div id="js-photo-show" class="js-img-list-f"></div>
        <div class="clear"></div>
            

        <div class="control-group">
            <label class="control-label" for="content">地图内容：</label>
            <div class="controls">
                <textarea id="" name="content" class="input-xxlarge" style="width:650px; height:100px;"><?php echo set_value('content') ?></textarea>
            </div>
        </div>

    </div>

    <div class="boxed-footer">
        <?php if ($this->ccid): ?>
            <input type="hidden" name="ccid" value="<?php echo $this->ccid ?>">
        <?php endif ?>
        <input type="hidden" name="cid" value="<?php echo $this->cid ?>">
        <input type="submit" value=" <?php echo lang('submit'); ?> " class='btn btn-primary'>
        <input type="reset" value=' <?php echo lang('reset'); ?> ' class="btn btn-danger">
    </div>
</form>
</div>

<?php include_once 'inc_ui_ueditor.php'; ?>
<?php include_once 'inc_ui_media.php'; ?>
<script type="text/javascript">
    ui.editor_create('content');
    media.sort('photo');
</script>
<?php if ($p = set_value('photo')): ?>
<script type="text/javascript">
    var store_photos = <?php echo json_encode(list_upload($p)) ?>;
    media.show(store_photos,"photo");
</script>
<?php endif ?>