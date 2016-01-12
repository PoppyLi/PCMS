$(function(){
    // 对分页的链接添加处理
    if (!tools.isEmptyValue($('.pagination').toArray())){
        $('.pagination>a').each(function(index, el) {
            if ($(el).attr('href') !="#") {
                el.href+=location.search;
            };
        });
    };

    // 验证码
    $('input[name="captchas"]').one('focusin',function(e){
        var img = $(this).nextAll('img.captchas');
        if (tools.isEmptyValue(img)) {
            var imgStr = '<img src="' + SITE_URL + 'captchas?t=' + Math.random()*10 
                        + '" class="captchas" title="点击刷新"';
            $(this).attr('flg') ? imgStr += ' style="cursor:pointer; padding-left:145px"/>'
                                : imgStr += ' style="cursor:pointer"/>';
            $(this).after(imgStr);
        }else{
            if ($(img).attr('src') == "" 
             || $(img).attr('src') == "#" 
             || RegExp('blank.png').test($(img).attr('src')) ) {
                $(img).attr('src',SITE_URL+'captchas?t='+Math.random()*10);
            };
        }
    });

    // 刷新验证码
    $(document).delegate('input[name="captchas"] ~ img.captchas', 'click', function(event) {
        $(this).attr('src',SITE_URL+'captchas?t='+Math.random()*10);
    });
    
});
