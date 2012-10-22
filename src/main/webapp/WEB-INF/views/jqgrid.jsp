<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<%@ include file="/WEB-INF/views/commons/taglibs.jsp"%>
<title>JqGrid</title>
<script type="text/javascript" src="${ctx}/resources/yepnope/yepnope.1.5.4-min.js"></script>
<script type="text/javascript" src="${ctx}/resources/yepnope/prefixes/yepnope.ie-prefix.js"></script>
<script type="text/javascript">
	yepnope({
		load : [
				"ie!${ctx}/resources/ie7/IE9.js", 
				"ie!${ctx}/resources/js/html5.js", 
				
				"${ctx}/resources/jquery/jquery-1.7.2.min.js",
				"ie!${ctx}/resources/jquery/jquery.placeholder.js",
				"${ctx}/resources/styles/style.css", 
				"${ctx}/resources/jquery/jquery.json-2.2-min.js",
				"${ctx}/resources/jquery/jquery.center.js",
				"${ctx}/resources/jquery/jquery.cookie.js",
				
				"${ctx}/resources/calendar/css/jscal2.css",
				"${ctx}/resources/calendar/css/border-radius.css",
				"${ctx}/resources/calendar/css/steel/steel.css",
				"${ctx}/resources/calendar/jscal2.js",
				"${ctx}/resources/calendar/cn.js",
				
				"${ctx}/resources/bootstrap/css/bootstrap-min.css", 
				"${ctx}/resources/bootstrap/css/bootstrap-responsive-min.css", 
				"${ctx}/resources/bootstrap/js/bootstrap.min.js",
				
				"${ctx}/resources/lhgdialog/skins/chrome.css",
				"${ctx}/resources/lhgdialog/skins/facebook.css",
				"${ctx}/resources/lhgdialog/skins/aero.css",
				"${ctx}/resources/lhgdialog/skins/default.css",
				"${ctx}/resources/lhgdialog/lhgdialog.js",
				
				"${ctx}/resources/jquery-ui-1.8.20/css/redmond/jquery-ui-1.8.20.custom.css",
				"${ctx}/resources/jquery-ui-1.8.20/js/jquery-ui-1.8.20.custom.min.js",
				
				"${ctx}/resources/jqgrid/css/ui.jqgrid.css",
				"${ctx}/resources/jqgrid/css/ui.multiselect.css",
				"${ctx}/resources/jqgrid/js/i18n/grid.locale-cn.js",
				"${ctx}/resources/jqgrid/plugins/ui.multiselect.js",
				"${ctx}/resources/jqgrid/js/jquery.jqGrid.min.js",
				"${ctx}/resources/js/jqgrid.js"
				
		],
		callback : {
			"grid.locale-cn.js" : function() {
				$.jgrid.no_legacy_api = true;
				$.jgrid.useJSON = true;
			},
			"jquery.placeholder.js" : function() {
				$('input[placeholder], textarea[placeholder]').placeholder();
			}
		},
		complete : function() {
		}
	});
</script>
</head>
<body>
		<div id="container">
		<div id="span12">
            <table id="grid"></table>  
            <div id="pager"></div>
        </div>  
        </div>  
</body>
</html>