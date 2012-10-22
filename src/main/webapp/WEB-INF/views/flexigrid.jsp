<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<%@ include file="/WEB-INF/views/commons/taglibs.jsp"%>
<title>flexiGrid</title>
      <script src="${ctx}/resources/js/html5.js" type="text/javascript" ></script>
<script type="text/javascript" src="${ctx}/resources/yepnope/yepnope.1.5.4-min.js"></script>
<script type="text/javascript" src="${ctx}/resources/yepnope/prefixes/yepnope.ie-prefix.js"></script>
<script type="text/javascript">
	yepnope({
		load : [
		        "ie!${ctx}/resources/ie7/IE9.js", 
		        "ie!${ctx}/resources/js/html5.js", 
		        "${ctx}/resources/bootstrap/css/bootstrap-min.css", 
		        "${ctx}/resources/bootstrap/css/bootstrap-responsive-min.css", 
				"${ctx}/resources/jquery/jquery-1.7.2.min.js",
		        "${ctx}/resources/bootstrap/js/bootstrap.min.js", 
		        "${ctx}/resources/styles/style.css", 
				"${ctx}/resources/jquery/jquery.json-2.2-min.js",
				"${ctx}/resources/jquery/jquery.center.js",
				"${ctx}/resources/jquery/jquery.cookie.js",
				
				"ie!${ctx}/resources/jquery/jquery.placeholder.js",
				"${ctx}/resources/calendar/css/jscal2.css",
				"${ctx}/resources/calendar/css/border-radius.css",
				"${ctx}/resources/calendar/css/steel/steel.css",
				"${ctx}/resources/calendar/jscal2.js",
				"${ctx}/resources/calendar/cn.js",
				
				"${ctx}/resources/lhgdialog/skins/chrome.css",
				"${ctx}/resources/lhgdialog/skins/facebook.css",
				"${ctx}/resources/lhgdialog/skins/aero.css",
				"${ctx}/resources/lhgdialog/skins/default.css",
				"${ctx}/resources/lhgdialog/lhgdialog.js",
				
				"${ctx}/resources/formvalidator/formValidator-4.1.1.js",
				"${ctx}/resources/formvalidator/formValidatorRegex.js",
				"${ctx}/resources/formvalidator/themes/126/style/style.css"
				
				//"${ctx}/resources/flexigrid/css/gray/flexigrid.css",
				//"${ctx}/resources/flexigrid/flexigrid.js",
				
				//"${ctx}/resources/js/flexigrid.js"
				],
				callback: {
				    "IE9.js": function () {
				     // console.log("html5 loaded!");
				      alert("IE9 loaded!");
				    },
				    "html5.js": function () {
				     // console.log("html5 loaded!");
				      alert("html5 loaded!");
				    },
				    "jquery.placeholder.js": function () {
				      //console.log("jquery.placeholder.js loaded!");
				      alert("jquery.placeholder.js loaded!");
					$('input[placeholder], textarea[placeholder]').placeholder();
				    }
				  },
				complete: function () {
					
			}
	});
</script>
<style type="text/css">
::-webkit-input-placeholder {color: red;}
:-moz-placeholder {color: red;}
.placeholder { color: red }
</style>
<%-- <link rel="stylesheet" type="text/css" href="${ctx}/resources/styles/style.css" />
<link rel="stylesheet" type="text/css" href="${ctx}/resources/form/style.css" />
<%@ include file="/WEB-INF/views/commons/jquery.jsp"%>
<%@ include file="/WEB-INF/views/commons/flexigrid.jsp"%>
<%@ include file="/WEB-INF/views/commons/lhgdialog.jsp"%>
<%@ include file="/WEB-INF/views/commons/formvalidator.jsp"%>
<%@ include file="/WEB-INF/views/commons/calendar.jsp"%>
<script type="text/javascript" src="${ctx}/resources/js/flexigrid.js"></script> --%>
</head>
<body>
	<div id="wrapper">
		<!-- top info starts here -->

		<%@ include file="/WEB-INF/views/main/top.jsp"%>

		<!-- main content starts here -->

		<div id="bottomcontenttop"></div>
<form class="well form-inline">
  <input type="text" class="input-small" placeholder="Email">
  <input type="password" class="input-small" placeholder="Password">
  <label class="checkbox">
    <input type="checkbox"> Remember me
  </label>
  <button type="submit" class="btn">Sign in</button>
</form>
		<div id="bottomcontent" style="height: 500px">
			<div class="center">
				<table align="center" class="table">
					<tr>
						<td>
						浏览器名称：<input type="text" class="ipt"  id="browsername" />
						&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="submit" class="btn" value="查询" onmouseout="this.className='btn'" onmousedown="this.className='btn btn_h'"/>
						<br/>
						<br/>
							<table id="table" style="display: none"></table>
							</td>
					</tr>
				</table>
			</div>
		</div>

		<div id="bottomcontentbtm"></div>

		<%@ include file="/WEB-INF/views/main/footer.jsp"%>

	</div>
	<form id="form" style="display: none;">
		<table border="0px" style="font-size: 12px" width="630px">
			<input type="hidden" id="id" name="id" />
			<tr>
				<!-- 控制宽度 -->
				<td align="right" style="width: 80px;"><span style="color: red;">*</span> 内核引擎：</td>
				<td style="width: 200px;"><input type="text" id="engine" name="engine" /></td>
				<td><div id="engineTip"></div></td>
			</tr>
			<tr>
				<td align="right">&nbsp;</td>
				<td colspan="2" valign="top"><div id="engineFixTip"></div></td>
			</tr>

			<tr>
				<td align="right"><span style="color: red;">*</span> 浏览器：</td>
				<td><input type="text" id="browser" name="browser" /></td>
				<td><div id="browserTip"></div></td>
			</tr>
			<tr>
				<td align="right">&nbsp;</td>
				<td colspan="2" valign="top"><div id="browserFixTip"></div></td>
			</tr>

			<tr>
				<td align="right"><span style="color: red;">*</span> 平台：</td>
				<td><input type="text" id="platform" name="platform" /></td>
				<td><div id="platformTip"></div></td>
			</tr>
			<tr>
				<td align="right">&nbsp;</td>
				<td colspan="2" valign="top"><div id="platformFixTip"></div></td>
			</tr>

			<tr>
				<td align="right"><span style="color: red;">*</span> 版本：</td>
				<td><input type="text" id="version" name="version" /></td>
				<td><div id="versionTip"></div></td>
			</tr>
			<tr>
				<td align="right">&nbsp;</td>
				<td colspan="2" valign="top"><div id="versionFixTip"></div></td>
			</tr>

			<tr>
				<td align="right">CSS评级：</td>
				<td><input type="text" id="grade" name="grade" /></td>
				<td><div id="gradeTip"></div></td>
			</tr>
			<tr>
				<td align="right">&nbsp;</td>
				<td colspan="2" valign="top"><div id="gradeFixTip"></div></td>
			</tr>

			<tr>
				<td align="right">时间：</td>
				<td><input type="text" id="datetime" name="datetime" value="" /><b id="time" class="date"></b>
				</td>
				<td><div id="datetimeTip"></div></td>
			</tr>
			<tr>
				<td align="right" valign="top">&nbsp;</td>
				<td colspan="2" valign="top"><div id="datetimeFixTip"></div></td>
			</tr>

			<tr>
				<td align="right" valign="top">&nbsp;</td>
				<td colspan="2"><input id="submit" type="submit" class="ui-button ui-state-default ui-corner-all " value="保存" />&nbsp;&nbsp;&nbsp;&nbsp;<input
					class="ui-button ui-state-default ui-corner-all " type="reset" value="重置" />
			</tr>
		</table>
	</form>
</body>
</html>