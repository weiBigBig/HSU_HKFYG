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
<link href="${pageContext.request.contextPath}/css/H-ui.admin.css" rel="stylesheet" type="text/css" />
<!--[if IE 6]>
<script type="text/javascript" src="http://lib.h-ui.net/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>DD_belatedPNG.fix('*');</script>
<![endif]-->
<title>修改密码</title>
</head>
<body>
	<div class="pd-20">
		<form action="/" method="post" class="form form-horizontal"
			id="form-change-password">
			<div class="row cl">
				<label class="form-label col-4">账户：</label>
				<div class="formControls col-4">张三</div>
				<div class="col-4"></div>
			</div>
			<div class="row cl">
				<label class="form-label col-4"><span class="c-red">*</span>新密码：</label>
				<div class="formControls col-4">
					<input type="password" class="input-text" autocomplete="off"
						placeholder="不修改请留空" name="new-password" id="new-password"
						datatype="*6-18" ignore="ignore">
				</div>
				<div class="col-4"></div>
			</div>
			<div class="row cl">
				<label class="form-label col-4"><span class="c-red">*</span>确认密码：</label>
				<div class="formControls col-4">
					<input type="password" class="input-text" autocomplete="off"
						placeholder="不修改请留空" name="new-password2" id="new-password2"
						recheck="new-password" datatype="*6-18" errormsg="您两次输入的密码不一致！"
						ignore="ignore">
				</div>
				<div class="col-4"></div>
			</div>
			<div class="row cl">
				<div class="col-8 col-offset-4">
					<input class="btn btn-primary radius" type="submit"
						value="&nbsp;&nbsp;保存&nbsp;&nbsp;">
				</div>
			</div>
		</form>
	</div>
	<script type="text/javascript" src="${pageContext.request.contextPath}/lib/jquery/1.9.1/jquery.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/lib/Validform/5.3.2/Validform.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/lib/layer/1.9.3/layer.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/H-ui.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/H-ui.admin.js"></script>
	<script>
$(function(){
	$("#form-change-password").Validform({
		tiptype:2,
		callback:function(form){
			form[0].submit();
			var index = parent.layer.getFrameIndex(window.name);
			parent.layer.close(index);
		}
	});
	
});
</script>
</body>
</html>