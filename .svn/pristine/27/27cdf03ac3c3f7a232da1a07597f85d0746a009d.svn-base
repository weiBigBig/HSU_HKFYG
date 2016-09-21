<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<!--[if lt IE 9]>
<script type="text/javascript" src="./lib/html5.js"></script>
<script type="text/javascript" src="./lib/respond.min.js"></script>
<script type="text/javascript" src="./lib/PIE_IE678.js"></script>
<![endif]-->
<link href="${pageContext.request.contextPath}/css/H-ui.min.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/H-ui.login.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/lib/Hui-iconfont/1.0.1/iconfont.css" rel="stylesheet"
	type="text/css" />
<script type="text/javascript">
function reloadcode(){
	document.getElementById("codeImg").src="${ctx}/piccode/createpic?"+  new Date().getTime();
	}
</script>
<!--[if IE 6]>
<script type="text/javascript" src="http://lib.h-ui.net/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>DD_belatedPNG.fix('*');</script>
<![endif]-->
<title>青协报名系统</title>
<meta name="keywords"
	content="H-ui.admin v2.3,H-ui网站后台模版,后台模版下载,后台管理系统模版,HTML后台模版下载">
<meta name="description"
	content="H-ui.admin v2.3，是一款由国人开发的轻量级扁平化网站后台模板，完全免费开源的网站后台管理系统模版，适合中小型CMS后台系统。">
</head>
<body>
	<input type="hidden" id="TenantId" name="TenantId" value="" />
	<div class="header"></div>
	<div class="loginWraper">
		<div id="loginform" class="loginBox">
			<form class="form form-horizontal" action="${ctx}/admin/login" method="post">
				<div class="row cl">
					<label class="form-label col-3"><i class="Hui-iconfont">&#xe60d;</i></label>
					<div class="formControls col-8">
					${errMsg }
						<input id="" name="login_name" type="text" placeholder="账号"
							class="input-text size-L">
							
					</div>
				</div>
				<div class="row cl">
					<label class="form-label col-3"><i class="Hui-iconfont">&#xe60e;</i></label>
					<div class="formControls col-8">
						<input id="" name="login_pass" type="password" placeholder="密码"
							class="input-text size-L">
					</div>
				</div>
				
				<div class="row cl">
					<div class="formControls col-8 col-offset-3">
						<input class="input-text size-L" type="text" name="picCode" placeholder="验证码"
							style="width: 150px;"> <img id="codeImg" style="width: 90px; height:40px"
							src="${ctx}/piccode/createpic"> <a id="kanbuq" 
							href="#" onclick="reloadcode()">看不清，换一张</a>
					</div>
				</div>
				<div class="row">
					<div class="formControls col-8 col-offset-3">
						
						<!-- <input type="radio" id="sex-1" value="1" 
							name="gender" datatype="*" nullmsg="请选择登录方式！"> <label
							for="sex-1">普通用户</label>
							<input type="radio" id="sex-2" name="gender" value="0"> <label
							for="sex-2">管理员 &nbsp;</label> -->
							<label for="online"> <input type="checkbox" name="online"
							id="online" value=""> 记住密码
						</label>
					</div>
					
				</div>
				
				<div class="row">
					<div class="formControls col-8 col-offset-3">
						<input type="submit" onclick="user()"  class="btn btn-success radius size-L"
							value="&nbsp;登&nbsp;&nbsp;&nbsp;&nbsp;录&nbsp;"> 
						<input type="button" onclick="regist()" class="btn btn-success radius size-L"
							value="&nbsp;注&nbsp;&nbsp;&nbsp;&nbsp;册&nbsp;">	
						<input type="submit" class="btn btn-success radius size-L"
							value="管理员登录">	
							
					</div>
					
				</div>
			</form>
		</div>
	</div>
	<div class="footer">由虚拟仿真实验室（云计算实验室）提供技术支持</div>
	<script type="text/javascript" src="${ctx}/lib/jquery/1.9.1/jquery.min.js"></script>
	<script type="text/javascript" src="${ctx}/lib/layer/1.9.3/layer.js"></script>
	<script type="text/javascript" src="${ctx}/js/H-ui.js"></script>
	<script type="text/javascript" src="${ctx}/js/H-ui.admin.js"></script>
	<script type="text/javascript" src="${ctx}/js/new.js"></script>
	<script type="text/javascript">
	
    
   /*  function regist() {
    	
        $('form').attr('action','${ctx}/student/regist');
    } */   
function regist()
    {
    	 /* window.location.href="${ctx}/jsp/user/member-add.jsp"; */
    	 active_add('注册','${ctx}/jsp/user/user-add.jsp','','510');
    }
function user() {
    	$('form').attr('action','${ctx}/student/login');      
    }

var _hmt = _hmt || [];
(function() {
  var hm = document.createElement("script");
  hm.src = "//hm.baidu.com/hm.js?080836300300be57b7f34f4b3e97d911";
  var s = document.getElementsByTagName("script")[0]; 
  s.parentNode.insertBefore(hm, s);
})();
var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3F080836300300be57b7f34f4b3e97d911' type='text/javascript'%3E%3C/script%3E"));
</script>
</body>
</html>