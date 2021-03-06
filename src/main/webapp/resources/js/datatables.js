(function(){
  "use strict";
  $(document).ready(function() {
	/** 显示消息框 */
	function msg(msg, color, title) {
		var titles = title || "消息";
		var colors = color || "red";
		// 显示填写框
		var dgs = new $.dialog({
			id : "msg",
			// 皮肤
			skin : 'facebook',
			title : titles,
			html : "<div id='innert'></div>",
			height : 200,
			cancelBtnTxt : '关闭',
			width : 336,
			cover : true
		});
		dgs.ShowDialog();
		$("#innert").html("<h1 style='color:" + colors + "'>" + msg + "</h1>").center();
		// 添加确定按钮
		// dgs.closeTime(10, function() {
		// dgs.SetTitle('窗口将在10秒钟后自动关闭');
		// var n = 9;
		// setInterval(function() {
		// dgs.SetTitle('窗口将在' + n + '秒钟后自动关闭');
		// n--;
		// }, 1000);
		// }, function() {
		// dgs = null;
		// });
	}
	/**
	 * 在 dataTables 中，参数名称的前缀用来说明参数的数据类型，很明显，b 表示布尔类型，i 表示整数类型，s 表示字符串类型。
	 */
	oTable = $('#example').dataTable({
		"aaSorting" : [ [ 0, "asc" ], [ 1, "desc" ] ],// 指定按多列数据排序的依据
		// "aaSortingFixed" : [ [ 3, "asc" ] ],// 同上。唯一不同点是不能被用户的自定义配置冲突
		"sPaginationType" : "full_numbers", // default two_button 分页样式
		// "iDisplayLength" : 30,// default 10 每页的行数
		// "iDisplayStart" : 0,// default 0 用于指定从哪一条数据开始显示到表格中去
		// "bPaginate" : true,// default true 是否分页
		// "bLengthChange" : false, // default true 是否允许用户通过一个下拉列表来选择分页后每页的行数
		// "bSort" : true,// default true 是否可排序
		// "bFilter" : false,// default true 是否启用客户端过滤功能
		// "bProcessing" : true,// defualt false 显示正在处理的层
		"bServerSide" : true,// default false 使用server端控制
		// "bDeferRender" : true,// default false 用于渲染的一个参数
		// "bScrollInfinite":true,//default false 以指定是否无限滚动（与sScrollY配合使用）
		// "iScrollLoadGap" : 100,// default 100 最多显示多少条数据(bScrollInfinite配合使用)
		// "bSortClasses":true,//default true 指定当当前列在排序时，是否增加classes 'sorting_1'
		// "bStateSave" : true,// default false 通过cookie保存当前的表信息
		"bJQueryUI" : true,// default false 使用jquery的皮肤
		// "bInfo" : true,// default true 是否显示表信息 总记录数没也显示多少等信息
		// "bAutoWidth" : true, // default true 是否自动计算表格各列宽度
		// "bAjaxDataGet" : true, // default true
		// "bScrollCollapse" : true,// default false 指定适当的时候缩起滚动视图
		// "iCookieDuration" : 12000,// default7200，单位为秒
		"sScrollY" : 300, // 是否开启垂直滚动，以及指定滚动区域大小
		// "sScrollX" : "100%",
		// "sScrollXInner" : "110%",
		// "bScrollCollapse": true,
		// "sScrollX" : 1200, // 是否开启水平滚动，以及指定滚动区域大小
		// "sAjaxDataProp" : "data", // default aaData json List的头信息
		// "sDom" : 't<"dataTables_footers_dash"ip>',
		// "sDom": 'T<"clear">lfrtip',
		// "sDom" : 'C<"clear">lfrtip',
		"sAjaxSource" : ctx + '/datatable/all',// ajax数据源
		// 这个为选择每页的条目数，当使用一个二维数组时，二维层面只能有两个元素，第一个为显示每页条目数的选项，第二个是关于这些选项的解释
		 "aLengthMenu" : [ [ 1000,750, 5000, -1 ], [ 1000, 750, 5000, "All" ] ],
		// "sCookiePrefix" : "abc",// 'SpryMedia_DataTables_' 存储在cookies中的字符串前缀
		"fnServerData" : function(sSource, aoData, fnCallback) {
			$.ajax({
				"dataType" : 'json',
				"type" : "POST",
				"url" : sSource,
				"data" : {
					_dt_json : $.toJSON(aoData)
				},
				"success" : fnCallback
			});
		},
		"fnRowCallback" : function(nRow, aData, iDisplayIndex) {
			// $('#example tr').click( function() {
			$(nRow).click(function() {
				$(oTable.fnSettings().aoData).each(function() {
					$(this.nTr).removeClass('row_selected');
				});
				if ($(this).hasClass('row_selected'))
					$(this).removeClass('row_selected');
				else
					$(this).addClass('row_selected');
			});
			// $("#example tbody").click(function(event) {
			// $(oTable.fnSettings().aoData).each(function() {
			// $(this.nTr).removeClass('row_selected');
			// });
			// $(event.target.parentNode).addClass('row_selected');
			// });
			return nRow;
		},
		"fnFooterCallback" : function(nRow, aaData, iStart, iEnd, aiDisplay) {
			// foot回调函数
		},
		"fnDrawCallback" : function(oInstance, oSettings, json) {
			
		},
		"fnPreDrawCallback" : function(oInstance, oSettings, json) {
			
		},
		"fnInitComplete" : function(oInstance, oSettings, json) {
//			console.log("com");
			console.timeStamp();
		},
		"aoSearchCols" : [ null, {
			"sSearch" : "keyword",
			"bRegex" : true
		}, null, null, null, null, {
			"sSearch" : "keyword2",
			"bRegex" : false
		} ],
		"aoColumns" : [ {
			// "bSearchable" : false,//是否查找
			// "bVisible" : false,// 是否显示
			"mDataProp" : "id",
			// "fnRender" : function(oObj) {// 列渲染器
			// return oObj.aData.engine + ' ' + oObj.aData.version;
			// },
			"sTitle" : "ID",
			"asSorting" : [ "desc", "asc", "asc" ],// 只能为这3个情况中的来回切换
			"sWidth" : "30px"
		}, {
			// "bVisible" : false,
			"mDataProp" : "engine",
			"sName" : "engines",
			"sTitle" : "内核引擎",
			"sWidth" : "50px"
		}, {
			"mDataProp" : "browser",
			"sTitle" : "浏览器",
			// "fnRender" : function(oObj) {// 列渲染器
			// return "<a href='abc'>" + oObj.aData.engine + ' ' +
			// oObj.aData.version + "</a>";
			// },
			"sWidth" : "100px"
		}, {
			"mDataProp" : "platform",
			"sTitle" : "平台",
			"sWidth" : "150px"
		}, {
			"mDataProp" : "version",
			"sTitle" : "版本",
			"sWidth" : "50px"
		}, {
			"mDataProp" : "grade",
			"sTitle" : "CSS评级",
			"sWidth" : "50px"
		}, {
			"mDataProp" : "datetime",
			"sTitle" : "时间",
			// "bVisible" : false,
			"sWidth" : "150px"
		} ]
	});

	// 添加3个按钮
	// 刷新
	$("#example_length label").after('<a id="refresh" href="javascript:void(0);"  class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-arrowrefresh-1-e"></span>刷新</a>');
	// 增删改查
	$("#example_length label").after('<a id="del" href="javascript:void(0);"  class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-circle-close"></span>删除</a>');
	$("#example_length label").after('<a id="add" href="javascript:void(0);"  class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-plusthick"></span>添加</a>');
	$("#example_length label").after('<a id="modify" href="javascript:void(0);"  class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-pencil"></span>修改</a>');

	$("#refresh").click(function() {
		oTable.fnDraw();
	});

	$("#del").click(function() {
		var val = $('#example .row_selected');
		// 只能为一条记录
		if (val.length != 1) {
			msg("请选择一条记录！");
			return;
		}
		// 显示填写框
		var del = new $.dialog({
			id : "msg",
			// 皮肤
			skin : 'facebook',
			title : "删除记录",
			html : "<div id='innert'></div>",
			height : 200,
			width : 336,
			cover : true
		});
		del.ShowDialog();
		$("#innert").html("<h1 style='color:red'>确定删除此条记录？</h1>").center();
		del.addBtn("confirm", "确定", function() {
			var id = $(val).find("td").eq(0).html();
			$.ajax({
				url : ctx + "/datatable/del/" + id,
				type : "POST",
				dataType : "json",
				success : function(data) {
					del.cancel();
					if (data.status) {
						msg(data.msg, "green");
						oTable.fnDraw();
					} else {
						msg(data.msg, "red");
					}
				}
			});
		}, "right");
	});

	$("#modify").click(function() {
		var val = $('#example .row_selected');
		// 只能为一条记录
		if (val.length != 1) {
			msg("请选择一条记录！");
			return;
		}
		// 显示填写框
		dg = new $.dialog({
			id : "balance",
			// 皮肤
			skin : 'facebook',
			title : "修改数据",
			html : $('#form')[0],
			height : 440,
			width : 650,
			cover : true
		});
		dg.ShowDialog();
		// 重置表单
		$("#form")[0].reset();
		// 设置校验
		validate();
		// 设置值
		$("#id").val($(val).find("td").eq(0).html());
		$("#engine").val($(val).find("td").eq(1).html());
		$("#browser").val($(val).find("td").eq(2).html());
		$("#platform").val($(val).find("td").eq(3).html());
		$("#version").val($(val).find("td").eq(4).html());
		$("#grade").val($(val).find("td").eq(5).html());
		$("#datetime").val($(val).find("td").eq(6).html());
	});
	$("#add").click(function() {
		// 显示填写框
		dg = new $.dialog({
			id : "balance",
			// 皮肤
			skin : 'facebook',
			title : "添加数据",
			html : $('#form')[0],
			height : 440,
			width : 650,
			cover : true
		});
		dg.ShowDialog();
		// 重置表单
		$("#form")[0].reset();
		// 设置校验
		validate();
	});
	// 验证表单
	$.formValidator.initConfig({
		theme : "126",
		formID : "form",
		onSuccess : function() {
			// 服务端保存
			$.ajax({
				url : ctx + "/datatable/save",
				data : $("#form").serialize(),
				type : "POST",
				dataType : "json",
				success : function(data) {
					dg.cancel();
					if (data.status) {
						msg(data.msg, "green");
						oTable.fnDraw();
					} else {
						msg(data.msg, "red");
					}
				}
			});
		},
		onError : function() {
			return;
		}
	});
	function validate() {

		$("#engine").formValidator({
			// empty:true,
			onShowFixText : "6~12个字符，包括字母、数字、下划线，以字母开头，字母或数字结尾",
			// onShowText : "内核引擎",
			defaultValue : "Weekit",
			onFocus : "内核引擎名称为6-12个字符",
			onCorrect : "输入的内核引擎正确！"
		}).inputValidator({
			min : 6,
			max : 12,
			onError : "你输入的内核引擎长度不正确,请确认！"
		}).regexValidator({
			regExp : "username",
			dataType : "enum",
			onError : "你输入的内核引擎格式不正确！"
		});

		$("#browser").formValidator({
			onShowFixText : "6~28个字符，包括字母、数字、下划线，以字母开头，字母或数字结尾",
			// onShowText : "浏览器名称",
			defaultValue : "Chrome",
			onFocus : "浏览器名称为6-28个字符",
			onCorrect : "输入的内核引擎正确！"
		}).inputValidator({
			min : 6,
			onErrorMin : "长度太短啦～～～～",
			max : 28,
			onError : "你输入的浏览器名称长度不正确,请确认！"
		});

		$("#platform").formValidator({
			onShowFixText : "2~16个字符，包括字母、数字、特殊符号，区分大小写",
			// onShowText : "平台名称",
			defaultValue : "Ubuntu",
			onFocus : "平台名名称为2-12个字符",
			onCorrect : "输入的平台名称正确！"
		}).inputValidator({
			min : 2,
			max : 16,
			empty : {
				leftEmpty : false,
				rightEmpty : false,
				emptyError : "平台名称两边不能有空符号！"
			},
			onError : "你输入的平台名称长度不正确,请确认！"
		});

		$("#version").formValidator({
			onShowFixText : "请输入正确的版本号",
			// onShowText : "版本号",
			defaultValue : "1.0",
			onFocus : "版本号为正确的整数或者小数",
			onCorrect : "输入的版本号正确！"
		}).inputValidator({
			min : 1,
			empty : {
				leftEmpty : false,
				rightEmpty : false,
				emptyError : "版本号两边不能有空符号!"
			},
			onError : "你输入的版本号长度不正确,请确认！"
		}).regexValidator({
			regExp : [ "decmal1", "intege1" ],
			dataType : "enum",
			onError : "你输入的版本号格式不正确！"
		});

		$("#grade").formValidator({
			onShowFixText : "CSS评级可以查看浏览器兼容性",
			// onShowText : "CSS评级",
			defaultValue : "A",
			onFocus : "CSS评级的长度必须是合法的字母",
			onCorrect : "输入的CSS评级正确！"
		}).inputValidator({
			min : 1,
			max : 5,
			onError : "你输入的CSS评级长度不正确,请确认！"
		}).regexValidator({
			regExp : "^([\\w-.]+)$",
			onError : "你输入的CSS评级格式不正确！"
		});

		$("#datetime").formValidator({
			onShowFixText : "时间为日期+时间，格式为如：2011-07-29 14:52:27",
			// onShowText : "2011-08-06 15:25:33",
			// defaultValue : "2011-07-29 14:52:27",
			onFocus : "输入形如：yyyy-MM-dd HH:mm:ss的日期",
			onCorrect : "输入的日期时间正确！"
		}).inputValidator({
			type:'datetime',
			onError : "你输入的日期时间格式不正确！"
//		}).functionValidator({
//			fun : isDateTime,
//			onError : "你输入的日期时间格式不正确！"
		});
	}
	$('.ui-state-default').hover(function() {
		$(this).addClass('ui-state-hover');
	}, function() {
		$(this).removeClass('ui-state-hover');
	});
	$('#switcher').themeswitcher();
	Calendar.setup({
		// 触发的组件ID
		trigger : "time",
		// 设置值的组件ID
		inputField : "datetime",
		dateFormat : "%Y-%m-%d %H:%M:%S",
		showTime : 24,
		onSelect : function() {
			this.hide();
		}
	});
});
})();