<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<%@ include file="/WEB-INF/views/commons/taglibs.jsp"%>
<title>sigmaGrid</title>
<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
      <script src="${ctx}/resources/js/html5.js" type="text/javascript" ></script>
<script type="text/javascript" src="${ctx}/resources/yepnope/yepnope.1.5.4-min.js"></script>
<script type="text/javascript">
	yepnope({
		load : [
		        "${ctx}/resources/bootstrap/css/bootstrap-min.css", 
		        "${ctx}/resources/bootstrap/css/bootstrap-responsive-min.css", 
				"${ctx}/resources/jquery/jquery-1.7.2.min.js",
		        "${ctx}/resources/bootstrap/js/bootstrap.min.js", 
		        "${ctx}/resources/styles/style.css", 
				"${ctx}/resources/jquery/jquery.json-2.2-min.js",
				"${ctx}/resources/jquery/jquery.center.js",
				"${ctx}/resources/jquery/jquery.cookie.js",
				"${ctx}/resources/calendar/css/jscal2.css",
				"${ctx}/resources/calendar/css/border-radius.css",
				"${ctx}/resources/calendar/css/steel/steel.css",
				"${ctx}/resources/calendar/jscal2.js",
				"${ctx}/resources/calendar/cn.js",
				"${ctx}/resources/sigma/gt_grid.css",
				"${ctx}/resources/sigma/skin/mac/skinstyle.css",
				"${ctx}/resources/sigma/skin/pink/skinstyle.css",
				"${ctx}/resources/sigma/skin/vista/skinstyle.css",
				"${ctx}/resources/sigma/gt_msg_cn.js",
				"${ctx}/resources/sigma/gt_grid_all.js",
				"${ctx}/resources/sigma/gt_patch_ie9.js",
				"${ctx}/resources/js/sigmagrid.js"],
		callback : function (url, result, key) {
		  }
	});
</script>

<%-- <link rel="stylesheet" type="text/css" href="${ctx}/resources/styles/style.css" />
<%@ include file="/WEB-INF/views/commons/jquery.jsp"%>
<%@ include file="/WEB-INF/views/commons/calendar.jsp"%>
<%@ include file="/WEB-INF/views/commons/sigmagrid.jsp"%>
<script type="text/javascript" src="${ctx}/resources/js/sigmagrid.js"></script>
 --%>
</head>
<body>
	<div id="wrapper">

		<!-- top info starts here -->

		<%@ include file="/WEB-INF/views/main/top.jsp"%>

		<!-- main content starts here -->

		<div id="bottomcontenttop"></div>

		<div id="bottomcontent" style="height: 500px">
			<div >
				<table align="center" class="table">
					<tr>
						<td>
							<div id="grid_container"></div>
						</td>
					</tr>
				</table>
			</div>
		</div>

		<div id="bottomcontentbtm"></div>

		<%@ include file="/WEB-INF/views/main/footer.jsp"%>

	</div>
</body>
</html>