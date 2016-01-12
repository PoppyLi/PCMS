$(function() {
    // 表单规则
    var rules = {
        title: {
            required:true,
            minlength:3
        }
    };
    // 验证
    make_validate('frm-create',rules);
    // 排序
    media.sort('photo');
});

