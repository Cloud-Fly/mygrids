/*! Copyright 2011, Ben Lin (http://dreamerslab.com/)
 * Licensed under the MIT License (LICENSE.txt).
 *
 * Version: 1.0.0
 *
 * Requires: jQuery 1.2.6+
 */

$.fn.dynamicChange = function(options) {
	// merge user options with default settings
	settings = $.extend({
		// ui存放主题名称的属性，与link中存放的主题名称一致，control ID
		cid : 'sid',
		// link中哪个属性存放主题名称，与控制主题最小元素一致，Link ID
		lid : 'title',
		// link中哪个属性存放url
		lurl : 'hre',
		// cookie的名称
		cName : '_my_style_',
		// 默认皮肤名称
		defaultCss : 'gray'
	}, options),

	this.click(function() {
		// 取得切换的主题名称
		var style = $(this).attr(settings.cid);
		// 把所有的link中含有存放主题属性的，给设置为disabled
		$("link[" + settings.lid + "]").attr("disabled", "disabled");
		// 当前切换主题的link选择器字符串
		$("link[" + settings.lid + "='" + style + "']").removeAttr("disabled");
		// 存到cookie中
		$.cookie(settings.cName, style, {
			expires : 30
		});
	});

	var cookie_style = $.cookie(settings.cName);
	if (cookie_style == null) {
		$("link[" + settings.lid + "]").attr("disabled", "disabled");
		$("link[" + settings.lid + "='" + settings.defaultCss + "']").removeAttr("disabled");
	} else {
		$("link[" + settings.lid + "]").attr("disabled", "disabled");
		$("link[" + settings.lid + "='" + cookie_style + "']").removeAttr("disabled");
	}
};