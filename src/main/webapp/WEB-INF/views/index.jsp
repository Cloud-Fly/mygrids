<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<%@ include file="/WEB-INF/views/commons/taglibs.jsp"%>
<title>主页</title>
<link rel="stylesheet" type="text/css" href="${ctx}/resources/styles/style.css" />
</head>
<body>
	<div id="wrapper">

		<!-- top info starts here -->

		<%@ include file="/WEB-INF/views/main/top.jsp"%>

		<!-- main content starts here -->

		<div id="homepic">
			<div class="message">
				<h4>友情提示: 欢迎登陆网上银行</h4>
				<p>
					"只需轻松三步即可享用方便、快捷、安全的网上银行服务。 尚未开通？快来开通体验吧！ "<br /> <a href="#">>> 马上开通</a>
				</p>
			</div>
		</div>

		<div id="bottomcontenttop"></div>

		<div id="bottomcontent">
			<div class="center">

				<li>请尽量使用专用电脑操作网上银行，并定期更新操作系统安全补丁和杀毒软件。</li>
				<li>请通过建行网站访问网上银行，不要通过电子邮件、不明网站等链接登录网上银行。</li>
				<li>请在柜台开通网银时，预留您本人的手机号码，以便为您提供重要交易短信通知、电话提醒等安全服务。</li>
				<li>请在使用网上银行完毕后，点击页面右上角的“退出系统”，以确保安全退出。</li>
				<li>如果您是网银盾客户，请在退出网上银行后，立即拔出您的网银盾，并妥善保管。</li>
				<li>请不要相信来源不明的以转账汇款、中奖等为诱饵的诈骗短信。</li>

			</div>
		</div>

		<div id="bottomcontentbtm"></div>

		<%@ include file="/WEB-INF/views/main/footer.jsp"%>

	</div>
</body>
</html>