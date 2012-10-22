<%@ page language="java" contentType="text/html; charset=UTF-8"%><%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	if (request.getHeader("x-requested-with") != null
			&& request.getHeader("x-requested-with").equalsIgnoreCase("XMLHttpRequest")) {
		response.getWriter().print("pagenotfind");
	} else {
%><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<%@ include file="/WEB-INF/views/commons/taglibs.jsp"%>
<title>404</title>
<link rel="stylesheet" type="text/css" href="${ctx}/resources/styles/style.css" />
<style type="text/css">
.STYLE1 {
	color: #0000FF;
	font-weight: bold;
	font-size: 25px font-weight:    bold;
}

.STYLE2 {
	font-size: 15px;
	line-height: 25px
}
</style>
</head>
<body>
	<div id="wrapper">

		<!-- top info starts here -->

		<%@ include file="/WEB-INF/views/main/top.jsp"%>

		<!-- main content starts here -->

		<div id="bottomcontenttop"></div>

		<div id="bottomcontent">
			<div class="center">
				<div style="margin: 0 auto; width: 650px;">
					<p>
						<h3 class="STYLE1">很抱歉，您要访问的页面不存在。</h3>
					</p>
					<br />
					<p>
						<h4 class="STYLE2">1、请检查您输入的地址是否正确。</h4>
					</p>
					<p>
						<h4 class="STYLE2">
							2、通过<a href="${ctx}">首页</a>进行浏览。
						</h4>
					</p>
				</div>
			</div>
		</div>

		<div id="bottomcontentbtm"></div>

		<%@ include file="/WEB-INF/views/main/footer.jsp"%>

	</div>
</body>
</html>
<%
	}
%>