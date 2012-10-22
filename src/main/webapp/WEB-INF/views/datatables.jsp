<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>dataTables</title>
<%@ include file="/WEB-INF/views/commons/taglibs.jsp"%>
<link rel="stylesheet" type="text/css" href="${ctx}/resources/styles/style.css" />
<%@ include file="/WEB-INF/views/commons/jquery.jsp"%>
<%@ include file="/WEB-INF/views/commons/datatables.jsp"%>
<%@ include file="/WEB-INF/views/commons/lhgdialog.jsp"%>
<%@ include file="/WEB-INF/views/commons/formvalidator.jsp"%>
<%@ include file="/WEB-INF/views/commons/calendar.jsp"%>
<script type="text/javascript" src="${ctx}/resources/js/datatables.js"></script>
</head>
<body>
<div id="switcher"></div>
	<div id="wrapper">

		<!-- top info starts here -->

		<%@ include file="/WEB-INF/views/main/top.jsp"%>

		<!-- main content starts here -->

		<div id="bottomcontenttop"></div>

		<div id="bottomcontent" style="height: 500px">
			<table cellpadding="0" cellspacing="0" border="0" class="display" id="example">
				<thead>
							<tr>
								<th>ID</th>
								<th>内核引擎</th>
								<th>浏览器</th>
								<th>平台</th>
								<th>版本</th>
								<th>CSS评级</th>
								<th>时间</th>
							</tr>
						</thead>
						<tbody></tbody>
						<tfoot>
							<tr>
								<th>ID</th>
								<th>内核引擎</th>
								<th>浏览器</th>
								<th>平台</th>
								<th>版本</th>
								<th>CSS评级</th>
								<th>时间</th>
							</tr>
						</tfoot>
			</table>

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