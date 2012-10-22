(function() {
	"use strict";
	function getOption(){
	var baseOption = {
		altRows : true,// 设置表格是否允许行交替变色值。樣式以預設值altclass設定
		autoencode : true,//设置为true，会对从服务器返回的数据以及编辑模式下提交的数据进行HTML编码。比如，把小于符号转换成&lt;
		autowidth : false,// 默认值为false。如果设为true，则Grid的宽度会根据父容器的宽度自动重算。重算仅发生在Grid初始化的阶段；如果当父容器尺寸变化了，同时也需要变化Grid的尺寸的话，则需要在自己的代码中调用setGridWidth方法来完成。
		caption : "",// 设置Grid表格的标题，如果未设置，则标题区域不显示。
		cellEdit : false,// 启用或者禁用单元格编辑功能
		datatype : "json",// 从服务器端返回的数据类型，（表格期望接收的数据类型）。可选类型：xml，xmlstring，json，local，function
		height : 'auto',// Grid的高度，可以接受数字、%值、auto，默认值为150。
		mtype : "POST",// 定义使用哪种方法发起请求，GET或者POST
		prmNames : {// prmNames这是一个数组，用于设置jqGrid将要向Server传递的参数名称
			order : "sortOrder",// 表示采用的排序方式的参数名称
			page : "page",// 表示请求页码的参数名称
			rows : "pageSize",// 表示请求行数的参数名称
			search : "search",// 表示是否是搜索请求的参数名称
			sort : "sortValue",// 表示用于排序的列名的参数名称
			totalrows : "totalRows" // 表示需从Server得到总共多少行数据的参数名称，参见jqGrid选项中的rowTotal
		},
		jsonReader : {
			root: "rows",//具体数据
			page: "page",//当前页数
			total: "total",//总页数
			records: "records",//总行数
			// 据其他网友的文章，如果设置repeatitems为false，不但数据可以乱序，
			// 而且不用每个数据元素都要具备，用到哪个找到哪个就可以了。实验却是如此。
			repeatitems : false
		},
		rowList : [ 10, 20, 30, 50, 100 ],// 一个数组，用于设置Grid可以接受的rowNum值。例如[10,20,30]。
		rowNum : 10,// 用于设置Grid中一次显示的行数，默认值为20。正是这个选项将参数rows（prmNames中设置的）通过url选项设置的链接传递到Server。注意如果Server返回的数据行数超过了rowNum的设定，则Grid也只显示rowNum设定的行数。
		pager : "#pager",// 指定分页栏对象，必须为一个有效的html元素。可以是'pager', '#pager', jQuery('#pager').推荐用'#pager'
		multiselect : true,// 显示checkbox
		sortname : "id",// 指定默认的排序列，可以是列名也可以是数字。此参数会在被传递到Server端。
		sortorder : "desc",// 排序顺序，升序或者降序（asc or desc）
		
		viewrecords : true// 是否显示目前记录编号与总笔数
	};
	return baseOption;
	}
	$(document).ready(function() {
		// 配置jqGrid组件
		$("#grid").jqGrid($.extend(true, baseOption, {
			colModel : [ {
				name : "id",
				index : "id",
				label : "ID",
				width : 40
			}, {
				name : "engine",
				index : "engine",
				label : "内核引擎",
				width : 180,
				sortable : true
			}, {
				name : "browser",
				index : "browser",
				label : "浏览器",
				width : 180,
				sortable : true
			}, {
				name : "platform",
				index : "platform",
				label : "平台",
				width : 160,
				sortable : true
			}, {
				name : "version",
				index : "version",
				label : "版本",
				width : 120,
				sortable : true
			}, {
				name : "grade",
				index : "grade",
				label : "CSS评级",
				width : 70,
				sortable : true
			}, {
				name : "datetime",
				index : "datetime",
				label : "时间",
				width : 220,
				sortable : true
			} ],
			url : ctx+"/jqgrid/all",
			editurl: ctx+"/jqgrid/edit",//定义对form编辑时的url
			caption : "浏览器列表",
			subGrid: true,
			subGridRowExpanded: function(subgrid_id, row_id) {
				// we pass two parameters
				// subgrid_id is a id of the div tag created whitin a table data
				// the id of this elemenet is a combination of the "sg_" + id of the row
				// the row_id is the id of the row
				// If we wan to pass additinal parameters to the url we can use
				// a method getRowData(row_id) - which returns associative array in type name-value
				// here we can easy construct the flowing
				var subgrid_table_id, pager_id,temp=baseOption;
				subgrid_table_id = subgrid_id+"_t";
				pager_id = "p_"+subgrid_table_id;
				$("#"+subgrid_id).html("<table id='"+subgrid_table_id+"' class='scroll'></table><div id='"+pager_id+"' class='scroll'></div>");
				jQuery("#"+subgrid_table_id).jqGrid($.extend(true, temp, {
					subGrid: false,
					height:100,
					colModel : [ {
						name : "id",
						index : "id",
						label : "ID",
						width : 40
					}, {
						name : "engine",
						index : "engine",
						label : "内核引擎",
						width : 180,
						sortable : true
					}, {
						name : "browser",
						index : "browser",
						label : "浏览器",
						width : 180,
						sortable : true
					}, {
						name : "platform",
						index : "platform",
						label : "平台",
						width : 160,
						sortable : true
					}, {
						name : "version",
						index : "version",
						label : "版本",
						width : 120,
						sortable : true
					}, {
						name : "grade",
						index : "grade",
						label : "CSS评级",
						width : 70,
						sortable : true
					}, {
						name : "datetime",
						index : "datetime",
						label : "时间",
						width : 220,
						sortable : true
					} ],
					url : ctx+"/jqgrid/all",
					editurl: ctx+"/jqgrid/edit",//定义对form编辑时的url
				   	pager: pager_id,
				   	sortname: 'id',
				    sortorder: "asc"
				}));
				jQuery("#"+subgrid_table_id).jqGrid('navGrid',"#"+pager_id,{edit:false,add:false,del:false})
			}
		}));
		jQuery("#grid").jqGrid('navGrid','#pager',{});
	});
	
})();