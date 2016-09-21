<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<LINK rel="Bookmark" href="${pageContext.request.contextPath}/favicon.ico">
<LINK rel="Shortcut Icon" href="${pageContext.request.contextPath}/favicon.ico" />

<!--[if lt IE 9]>
<script type="text/javascript" src="./lib/html5.js"></script>
<script type="text/javascript" src="./lib/respond.min.js"></script>
<script type="text/javascript" src="./lib/PIE_IE678.js"></script>
<![endif]-->
<link href="${ctx}/skin/default/skin.css" rel="stylesheet" type="text/css" />
<link href="${ctx}/css/H-ui.min.css" rel="stylesheet" type="text/css" />
<link href="${ctx}/css/H-ui.admin.css" rel="stylesheet" type="text/css" />
<link href="${ctx}/lib/Hui-iconfont/1.0.1/iconfont.css" rel="stylesheet"
	type="text/css" />
<link href="${ctx}/css/style.css" rel="stylesheet" type="text/css" />
<!--[if IE 6]>
<script type="text/javascript" src="http://lib.h-ui.net/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>DD_belatedPNG.fix('*');</script>
<![endif]-->
<title>招募平台</title>
<meta name="keywords"
	content="H-ui.admin v2.3,H-ui网站后台模版,后台模版下载,后台管理系统模版,HTML后台模版下载">
<meta name="description"
	content="H-ui.admin v2.3，是一款由国人开发的轻量级扁平化网站后台模板，完全免费开源的网站后台管理系统模版，适合中小型CMS后台系统。">
<link rel="icon" href="${ctx }/images/title-icon.png" type="image/x-icon">
</head>
<body>
	<header class="Hui-header cl">
		<a class="Hui-logo l"  href="http://baike.so.com/doc/7487196-7757249.html">成都东软学院青年志愿者协会</a>  <span
			class="Hui-subtitle l">V1.0公测</span>
				<nav class="mainnav cl" id="Hui-nav">
		<ul>
			<li class="dropDown dropDown_click"><a href="javascript:;" class="dropDown_A"><i class="Hui-iconfont">&#xe600;</i> 
			发布 <i class="Hui-iconfont">&#xe6d5;</i></a>
				<ul class="dropDown-menu radius box-shadow">
<li><a href="javascript:;" onclick="active_add('添加活动','${ctx}/jsp/admin/active/active-add.jsp','','510')"><i class="Hui-iconfont">&#xe616;</i> 活动</a></li>	
				<li><a href="javascript:;" onclick="picture_add('添加资讯','picture-add.html')"><i class="Hui-iconfont">&#xe613;</i> 通知</a></li>
					
				</ul>
			</li>
		</ul>
	</nav>

		<ul class="Hui-userbar">
			<li>超级管理员</li>
			<li class="dropDown dropDown_hover"><a href="#"
				class="dropDown_A"><%if(session.getAttribute("admin_name")!=null){%>
				${admin_name }
				<i class="Hui-iconfont">&#xe6d5;</i></a>
				<ul class="dropDown-menu radius box-shadow">
					<li><a href="${ctx}/jsp/user/member-show.jsp">个人信息</a></li>
					<li><a href="${ctx}/jsp/admin/login.jsp">切换账户</a></li>
					<li><a href="#">退出</a></li>
				</ul>
				<%} else{ %>
				<a href="${ctx}/jsp/admin/login.jsp"
				class="dropDown_A">管理员登录</a>
				<%} %> 
				</li>
			<li id="Hui-msg"> <a href="#" title="消息"><span class="badge badge-danger">2</span><i
			 class="Hui-iconfont" style="font-size:18px">&#xe68a;</i></a> </li>
			<li id="Hui-skin" class="dropDown right dropDown_hover"><a
				href="javascript:;" title="换肤"><i class="Hui-iconfont"
					style="font-size: 18px">&#xe62a;</i></a>
				<ul class="dropDown-menu radius box-shadow">
					<li><a href="javascript:;" data-val="default" title="默认（黑色）">默认（黑色）</a></li>
					<li><a href="javascript:;" data-val="blue" title="蓝色">蓝色</a></li>
					<li><a href="javascript:;" data-val="green" title="绿色">绿色</a></li>
					<li><a href="javascript:;" data-val="red" title="红色">红色</a></li>
					<li><a href="javascript:;" data-val="yellow" title="黄色">黄色</a></li>
					<li><a href="javascript:;" data-val="orange" title="绿色">橙色</a></li>
				</ul></li>
		</ul>
		<a aria-hidden="false" class="Hui-nav-toggle" href="#"></a>
	</header>
	<aside class="Hui-aside">
		<input runat="server" id="divScrollValue" type="hidden" value="" />
		<div class="menu_dropdown bk_2">



			<!--<dl id="menu-page">
			<dt><i class="Hui-iconfont">&#xe626;</i> 页面管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
			<dd>
				<ul>
					<li><a _href="page-home.html" href="javascript:void(0)">首页管理</a></li>
					<li><a _href="page-flinks.html" href="javascript:void(0)">友情链接</a></li>
				</ul>
			</dd>
		</dl>-->
		<dl id="menu-article">
			<dt><i class="Hui-iconfont">&#xe616;</i> 活动管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
			<dd>
				<ul>
					<li><a _href="${ctx}/jsp/admin/active/active-list.jsp" href="javascript:void(0)">活动列表</a></li>
											<li><a _href="${ctx}/jsp/admin/active/member-rest.jsp" href="javascript:;">分组剩余</a></li>
					
<%-- 					<li><a _href="${ctx}/jsp/member-level.jsp" href="javascript:;">工时管理</a></li>
 --%>				</ul>
			</dd>
		</dl>
			<dl id="menu-member">
				<dt>
					<i class="Hui-iconfont">&#xe60d;</i> 人员管理<i
						class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
				</dt>
				<dd>
					<ul>
											<li><a _href="${ctx}/jsp/admin/member/member-list.jsp" href="javascript:;">人员列表</a></li>
					
						
						<li><a _href="${ctx}/jsp/admin/member/member-group.jsp" href="javascript:;">小组情况</a></li>
						<li><a _href="${ctx}/jsp/admin/member/member-del.jsp" href="javascript:;">删除的人员</a></li>

					</ul>
				</dd>
			</dl>
			<dl id="menu-comments">
				<dt>
					<i class="Hui-iconfont">&#xe622;</i> 留言管理<i
						class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
				</dt>
				<dd>
					<ul>

						<li><a _href="${ctx}/jsp/admin/feedback/feedback-list.jsp" href="javascript:void(0)">意见反馈</a></li>
					</ul>
				</dd>
			</dl>
			<!--<dl id="menu-order">
			<dt><i class="Hui-iconfont">&#xe63a;</i> 财务管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
			<dd>
				<ul>
					<li><a _href="order-list.html" href="javascript:void(0)">订单列表</a></li>
					<li><a _href="recharge-list.html" href="javascript:void(0)">充值管理</a></li>
					<li><a _href="invoice-list.html" href="javascript:void(0)">发票管理</a></li>
				</ul>
			</dd>
		</dl>-->


			<dl id="menu-tongji">
				<dt>
					<i class="Hui-iconfont">&#xe61a;</i> 系统统计<i
						class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
				</dt>
				<dd>
					<ul>
						<li><a _href="${ctx}/jsp/admin/other/charts-1.jsp" href="javascript:void(0)">折线图</a></li>

						<li><a _href="${ctx}/jsp/admin/other/charts-5.jsp" href="javascript:void(0)">饼状图</a></li>

					</ul>
				</dd>
			</dl>
			<dl id="menu-tongji">
				<dt>
					<i class="Hui-iconfont">&#xe61a;</i> 系统管理<i
						class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
				</dt>
				<dd>
					<ul>
						<li><a _href="${ctx}/jsp/base/system-change.jsp" href="javascript:void(0)">选项增设</a></li>

						<li><a _href="${ctx}/jsp/admin/other/charts-5.jsp" href="javascript:void(0)">饼状图</a></li>

					</ul>
				</dd>
			</dl>
		</div>
	</aside>
	<div class="dislpayArrow">
		<a class="pngfix" href="javascript:void(0);"
			onClick="displaynavbar(this)"></a>
	</div>
	<section class="Hui-article-box">
		<div id="Hui-tabNav" class="Hui-tabNav">
			<div class="Hui-tabNav-wp">
				<ul id="min_title_list" class="acrossTab cl">
					<li class="active"><span title="我的桌面" data-href="${ctx}/jsp/admin/welcome.jsp">我的桌面</span><em></em></li>
				</ul>
			</div>
			<div class="Hui-tabNav-more btn-group">
				<a id="js-tabNav-prev" class="btn radius btn-default size-S"
					href="javascript:;"><i class="Hui-iconfont">&#xe6d4;</i></a><a
					id="js-tabNav-next" class="btn radius btn-default size-S"
					href="javascript:;"><i class="Hui-iconfont">&#xe6d7;</i></a>
			</div>
		</div>
		<div id="iframe_box" class="Hui-article">
			<div class="show_iframe">
				<div style="display: none" class="loading"></div>
				<iframe scrolling="yes" frameborder="0" src="${ctx}/jsp/admin/welcome.jsp"></iframe>
			</div>
		</div>
	</section>
	<script type="text/javascript" src="${ctx}/lib/jquery/1.9.1/jquery.min.js"></script>
	<script type="text/javascript" src="${ctx}/lib/layer/1.9.3/layer.js"></script>
	<script type="text/javascript" src="${ctx}/js/H-ui.js"></script>
	<script type="text/javascript" src="${ctx}/js/H-ui.admin.js"></script>
	<script type="text/javascript" src="${ctx}/js/new.js"></script>
</body>
</html>