// "use strict";

var jcrop_api;

$(function(){

var img_url,
	resize={},
	cropdata={},
	jcrop_api,
	boundx,
	boundy,
	$preview = $('#preview-pane'),
	$pcnt = $('#preview-pane .preview-container'),
	$pimg = $('#preview-pane .preview-container #crop-preview'),
	xsize = $pcnt.width(),
	ysize = $pcnt.height();

    // crop-modal
    // 裁剪
    $('.js-img-list-f').delegate('.js-goal a[data-crop]','click',function(e){
        e.preventDefault();
        var fid = $(this).data('crop');
        $('#crop-btn').attr('data-fid',fid);
        $.getJSON(UPLOADDO_URL+'get_ajax/'+fid)
		.done(function(data){
			img_url = UPLOAD_URL+data.url;
			var tmp_url = img_url+'?n='+Math.random()*100;

			console.log("fid : "+fid);
			console.log("img : "+tmp_url);

			var img_dom = "<img id='crop-target' src='"+tmp_url+"' data-id='"+fid+"' alt='' style='max-width:100%;max-height:99%;margin:auto;'>";

			$('#crop-modal .modal-body').html(img_dom);

			$('#crop-target').attr('src',tmp_url);
			$('#crop-preview').attr('src',tmp_url);

			$('#crop-modal').css({
				"width":$(window).width()-100
				,"height":$(window).height()-100
				,"top":"50px"
				,"left":"25%"
			});

			$('#crop-modal .modal-body').css({
				"max-height":"none"
				,"height":"90%"
			});

	        $('#crop-modal').modal();

		});
    });

    // 关闭时触发
    $('#crop-modal').on('hide',function(e){
		jcrop_api.destroy();
    });

    // 打开时触发
    $('#crop-modal').on('shown',function(e){
    	console.log($('#crop-modal .modal-body').width());
    	console.log($('#crop-target').width());

    	// if ($('#crop-modal .modal-body').width() < $('#crop-target').width()) {
    	// 	// 不支持IE6 不支持 max-width
    	// 	$('#crop-target').attr('max-width',"90%");
    	// };

    	// if ($('#crop-modal .modal-body').height() < $('#crop-target').height()) {
    	// 	$('#crop-target').attr('max-height',$('#crop-modal .modal-body').height());
    	// };

    	crop_init();
    	console.log('剪裁初始化');
    });


function crop_init(){
	//剪裁初始化
	$('#crop-target').Jcrop({
		onSelect:showCoords
		,onChange:showCoords
		,onRelease:function(){
			console.log('释放');
		}
		,aspectRatio:9/6
		,minSize:[100,100]
		// ,maxSize:[400,400]
		// ,setSelect:[286,50,507,197]
		,bgColor:'#fff'
		,bgOpacity:0.5
	},function(){
	    // Use the API to get the real image size
	    jcrop_api = this;
	    bounds = jcrop_api.getBounds();
	    boundx = bounds[0];
	    boundy = bounds[1];
	    // Store the API in the jcrop_api variable

	    // Move the preview into the jcrop container for css positioning
	    $preview.appendTo(jcrop_api.ui.holder);

	    // 加载img of tools.json
	    imgReady($('#crop-target').attr('src'),function(){
	    	resize.w = this.width;
	    	resize.h = this.height;
	    });

    });
}

function showCoords(c)
{
	// c.x, c.y, c.x2, c.y2, c.w, c.h
	cropdata = c;

	if (parseInt(c.w) > 0)
	{
		var rx = xsize / c.w;
		var ry = ysize / c.h;

		$pimg.css({
			width: Math.round(rx * boundx) + 'px',
			height: Math.round(ry * boundy) + 'px',
			marginLeft: '-' + Math.round(rx * c.x) + 'px',
			marginTop: '-' + Math.round(ry * c.y) + 'px'
		});
	}
};

$('#crop-btn').on('click',function(e){
	e.preventDefault;

	if ($.isNumeric(cropdata.x)) {
		console.log('crop data ok!');
		jcrop_api.release();

		var 
		c={}, // 获取的裁剪区域
		s=resize, // 图片原始大小
		i={}, // 裁剪图的现有大小
		r={}, // 原始和现有的比例
		d={}; // 实际的裁剪区
		c = cropdata; 
		// 获取借取后的对象出错
		i.w = $('#crop-target').width();
		i.h = $('#crop-target').height();

		r.x = s.w/i.w;
		r.y = s.h/i.h;

		d.x = c.x*r.x;
		d.y = c.y*r.y;
		d.w = c.w*r.x;
		d.h = c.h*r.y;
		d.fid = $(this).attr('data-fid')-0;

		var fancimg = $("a[data-crop="+d.fid+"]").parents('.js-goal').find('.fancybox-img');

		console.log("c is");
		console.log(c);
		console.log("s is");
		console.log(s);
		console.log("r is");
		console.log(r);
		console.log("i is");
		console.log(i);
		console.log("d is");
		console.log(d);

		$.ajax({
			url: UPLOADDO_URL+'gd_ajax',
			type: 'GET',
			dataType: 'json',
			data: d
		})
		.done(function(data) {
			console.log("success");
			if (data.status ==1) {
				// bootbox.alert(data.msg);
	            $.pnotify({
	                title: '裁剪'
	                ,text: data.msg
	                ,type: 'success' 
	                ,animation: 'fade'
	            });
				tmp_url = img_url+'?n='+Math.random()*100;
				jcrop_api.destroy();
				$('#crop-target').remove();
				$('#crop-bench').html('<img src="'+tmp_url+'" id="crop" >');
				$('#crop-preview').attr('src',tmp_url);
				$('#crop-modal').modal('hide');
				$(fancimg).attr('href',tmp_url);
				// crop_init();
			}else{
				bootbox.alert("<span class='text-error'>"+data.msg+"</span>");
			}
		})
		.fail(function(XMLHttpRequest, textStatus, errorThrown){
            var m = XMLHttpRequest.responseJSON;
            $.pnotify({
                title:"错误提示！"
                ,text:m.msg
                ,type:"error"
                ,animation: 'fade'
            });
            $('#'+domf).after(ui.alert('访问数据列表错误 ：<br />'+m));
        })
		.always(function() {
			console.log("complete");
		});
	}else{
		bootbox.alert('你还没有任何的裁剪。');
	}	
});

});