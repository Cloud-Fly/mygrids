/*! Copyright 2011, Ben Lin (http://dreamerslab.com/)
 * Licensed under the MIT License (LICENSE.txt).
 *
 * Version: 1.0.0
 *
 * Requires: jQuery 1.2.6+
 */

$.fn.dynamicChange= function(options) {
	// merge user options with default settings
	settings = $.extend({
		//ui存放主题名称的属性，与link中存放的主题名称一致，control ID
		cid : 'sid',
		//link中哪个属性存放主题名称，与控制主题最小元素一致，Link ID
		lid:'title',
		//link中哪个属性存放url 
		lurl:'hre',
		//cookie的名称
		cName:'_my_style_',
		//默认皮肤名称
		defaultCss:'gray',
		top : false
	}, options),
	
	this.click(function() {
		//取得切换的主题名称
		var style = $(this).attr(settings.cid);
		//把所有的link中含有存放主题属性的，给设置为disabled
		$("link["+settings.lid+"]").attr("disabled", "disabled");
		//当前切换主题的link选择器字符串
		var link="link["+settings.lid+"='" + style + "']";
		//得到对象
		var _this=$(link);
		//实际显示的对象的大小，可以显示的
		var l1=$(link+"[href]").length;
		//当前主题存放的对象的大小，不能显示的
		var l2=$(link+"["+settings.lurl+"]").length;
		if(l1==l2){
			//如果相等，则表示
			$(_this).removeAttr("disabled");
		}else{
			//一个皮肤可能有多个css
			for ( var i = 0; i < _this.length; i++) {
				//先disableed再remove才有效果
				$('head').append( '<link title="'+style+'" href="' + $(_this[i]).attr(settings.lurl) + '" disabled="disabled" rel="stylesheet" type="text/css"/>' );
				$(link).removeAttr("disabled");
			}
		}
		//存到cookie中
		$.cookie(settings.cName, style, {
			expires : 30
		});
	});

	var cookie_style = $.cookie(settings.cName);
	if (cookie_style == null) {
		$("link["+settings.lid+"]").attr("disabled", "disabled");
		$("link["+settings.lid+"='"+settings.defaultCss+"']").removeAttr("disabled");
		var _this=$("link["+settings.lid+"='"+settings.defaultCss+"']");
		 $('head').append( '<link '+settings.lid+'="'+settings.defaultCss+'" href="' + $(_this).attr("hre") + '" disabled="disabled" rel="stylesheet" type="text/css"/>' );
		 $("link["+settings.lid+"='"+settings.defaultCss+"']").removeAttr("disabled");
	} else {
		$("link["+settings.lid+"]").attr("disabled", "disabled");
		//当前切换主题的link选择器字符串
		var link="link["+settings.lid+"='" + cookie_style + "']";
		var _this=$(link);
		var l1=$(link+"[href]").length;
		var l2=$(link+"[hre]").length;
		if(l1==l2){
			$(_this).removeAttr("disabled");
		}else{
			//一个皮肤可能有多个css
			for ( var i = 0; i < _this.length; i++) {
				//先disableed再remove才有效果
				$('head').append( '<link '+settings.lid+'="'+cookie_style+'" href="' + $(_this[i]).attr("hre") + '" disabled="disabled" rel="stylesheet" type="text/css"/>' );
				$(link).removeAttr("disabled");
			}
		}
	}
};