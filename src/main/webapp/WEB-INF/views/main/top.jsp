<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<div id="header">
	<div id="hright">
		<div id="hrighttop">
<style type="text/css">
#pageStyle ul {
	padding: 11px 0;
	zoom: 1;
	list-style: none;
}
#pageStyle .title {
float: left;
color: #73B72C;
cursor: default;
text-align: right;
margin-bottom: -1px;
position: relative;
}
#pageStyle li {
list-style: none;
width: 14px;
height: 14px;
float: left;
margin-right: 15px;
border: 1px solid black;
cursor: pointer;
position: relative;
}
</style>
			<p>
			<ul id="pageStyle">
				<span class="title">页面风格：</span>
				<li sid="blue" style="background: #BAD0EE"></li>
				<li sid="green" style="background: #73AAD3"></li>
				<li sid="gray" style="background: #DEDEDE"></li>
			</ul>
			</p>

		</div>
		<div id="menu">
			<ul>
				<li><a href="${ctx}/" title="主页">主页</a> |</li>
				<li><a href="${ctx}/sigmagrid/" title="sigmaGrid">sigmaGrid</a> |</li>
				<li><a href="${ctx}/flexigrid/" title="flexiGrid">flexiGrid</a> |</li>
				<li><a href="${ctx}/datatables/" title="dataTables">dataTables</a> |</li>
				<li><a href="${ctx}/" title="联系我们">联系我们</a></li>
			</ul>
		</div>
	</div>
	<div id="title">
		<h3 style="font-size: 20px;">各种Grid</h3>
		<p>sigmaGrid、flexiGrid、dataTables</p>
	</div>
</div>