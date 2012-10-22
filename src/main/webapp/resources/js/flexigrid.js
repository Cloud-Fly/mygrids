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
	}

	$("#table").flexigrid({
		url : ctx + '/flexigrid/all',
		dataType : 'json',
		colModel : [ {
			display : 'ID',
			name : 'id',
			width : 50,
			sortable : true,
			align : 'center'
		}, {
			display : '内核引擎',
			name : 'engine',
			width : 100,
			sortable : true,
			// render : function(v) {
			// if (v == "1")
			// return "汇入";
			// else if (v == "2")
			// return "转出";
			// else
			// return "其他";
			// },
			align : 'center'
		}, {
			display : '浏览器',
			name : 'browser',
			width : 100,
			sortable : true,
			align : 'center'
		}, {
			display : '平台',
			name : 'platform',
			width : 180,
			sortable : true,
			align : 'center'
		}, {
			display : '版本',
			name : 'version',
			width : 150,
			sortable : true,
			align : 'left'
		}, {
			display : 'CSS评级',
			name : 'grade',
			width : 150,
			sortable : true,
			align : 'left'
		}, {
			display : '时间',
			name : 'datetime',
			width : 150,
			sortable : true,
			align : 'left'
		} ],
		buttons : [ {
			name : '编辑',
			bclass : 'edit',
			onpress : test
		}, {
			separator : true
		}, {
			name : '添加',
			bclass : 'add',
			onpress : test
		}, {
			separator : true
		}, {
			name : '删除',
			bclass : 'delete',
			onpress : test
		}, {
			separator : true
		} ],
		searchitems : [ {
			display : 'CSS评级',
			name : 'grade'
		}, {
			display : '浏览器',
			name : 'browser',
			isdefault : true
		} ],
		title : '各平台浏览器明细查询',
		resizable : true,
		// autoload : false,
		// novstripe : false,
		// showToggleBtn : false,
		// striped : false,
		singleSelect : true,// 只能选中一行
		width : 830,
		height : 300
	});

	$("input.btn").click(function() {
		var val = $("#browsername").val();
		if (val != null && val.length > 0) {
			var params = [];
			var param = {
				name : "browser",
				value : val.trim()
			};
			params[params.length] = param;
			$('#table').flexOptions({// 重置表格的某些参数
				newp : 1,// 设置起始页
				// 设置查询参数
				addparams : params
			}).flexReload();// reload
		}
	});

	$(".delete").click(function() {
		var val = $("tr.trSelected");
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
		// 为每个td增加了个abbr 源码521 以防调整位置后出错。
		$("#innert").html("<h1 style='color:red'>确定删除此条记录？</h1>").center();
		del.addBtn("confirm", "确定", function() {
			var id = $(val).find("td[abbr=id] div").eq(0).html();
			$.ajax({
				url : ctx + "/datatable/del/" + id,
				type : "POST",
				dataType : "json",
				success : function(data) {
					del.cancel();
					if (data.status) {
						msg(data.msg, "green");
						$('#table').flexReload();// reload
					} else {
						msg(data.msg, "red");
					}
				}
			});
		}, "right");
	});

	$(".edit").click(function() {
		var val = $("tr.trSelected");
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
		$("#id").val($(val).find("td[abbr=id] div").eq(0).html());
		$("#engine").val($(val).find("td[abbr=engine] div").eq(0).html());
		$("#browser").val($(val).find("td[abbr=browser] div").eq(0).html());
		$("#platform").val($(val).find("td[abbr=platform] div").eq(0).html());
		$("#version").val($(val).find("td[abbr=version] div").eq(0).html());
		$("#grade").val($(val).find("td[abbr=grade] div").eq(0).html());
		$("#datetime").val($(val).find("td[abbr=datetime] div").eq(0).html());
	});
	$(".add").click(function() {
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
						$('#table').flexReload();// reload
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
			type : 'datetime',
			onError : "你输入的日期时间格式不正确！"
		});
	}
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
	$("#pageStyle li").dynamicChange();
});
function test(com, grid) {
	if (com == 'Delete') {
		confirm('Delete ' + $('.trSelected', grid).length + ' items?')
	} else if (com == 'Add') {
		alert('Add New Item');
	}
}
})();