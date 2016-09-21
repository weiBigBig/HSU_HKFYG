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
<script type="text/javascript" src="lib/html5.js"></script>
<script type="text/javascript" src="lib/respond.min.js"></script>
<script type="text/javascript" src="lib/PIE_IE678.js"></script>
<![endif]-->
<link href="${pageContext.request.contextPath}/css/H-ui.min.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/H-ui.admin.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/lib/icheck/icheck.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/lib/Hui-iconfont/1.0.1/iconfont.css" rel="stylesheet"
	type="text/css" />
<!--[if IE 6]>
<script type="text/javascript" src="http://lib.h-ui.net/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>DD_belatedPNG.fix('*');</script>
<![endif]-->
<title>添加管理员</title>
</head>
<body>
	<div class="pd-20">
		<form action="" method="post" class="form form-horizontal"
			id="form-admin-add">
			<div class="row cl">
				<label class="form-label col-3"><span class="c-red">*</span>管理员：</label>
				<div class="formControls col-5">
					<input type="text" class="input-text" value="" placeholder=""
						id="user-name" name="user-name" datatype="*2-16" nullmsg="用户名不能为空">
				</div>
				<div class="col-4"></div>
			</div>
			<div class="row cl">
				<label class="form-label col-3"><span class="c-red">*</span>密码：</label>
				<div class="formControls col-5">
					<input type="password" placeholder="密码" autocomplete="off" value=""
						class="input-text" datatype="*6-20" nullmsg="密码不能为空">
				</div>
				<div class="col-4"></div>
			</div>
			<div class="row cl">
				<label class="form-label col-3"><span class="c-red">*</span>确认密码：</label>
				<div class="formControls col-5">
					<input type="password" placeholder="确认密码" autocomplete="off"
						class="input-text Validform_error" errormsg="您两次输入的新密码不一致！"
						datatype="*" nullmsg="请再输入一次密码！" recheck="newpassword"
						id="newpassword2" name="newpassword2">
				</div>
				<div class="col-4"></div>
			</div>
			<div class="row cl">
				<label class="form-label col-3"><span class="c-red">*</span>性别：</label>
				<div class="formControls col-5 skin-minimal">
					<div class="radio-box">
						<input type="radio" id="sex-1" name="sex" datatype="*"
							nullmsg="请选择性别！"> <label for="sex-1">男</label>
					</div>
					<div class="radio-box">
						<input type="radio" id="sex-2" name="sex"> <label
							for="sex-2">女</label>
					</div>
				</div>
				<div class="col-4"></div>
			</div>
			<div class="row cl">
				<label class="form-label col-3"><span class="c-red">*</span>手机：</label>
				<div class="formControls col-5">
					<input type="text" class="input-text" value="" placeholder=""
						id="user-tel" name="user-tel" datatype="m" nullmsg="手机不能为空">
				</div>
				<div class="col-4"></div>
			</div>
			<div class="row cl">
				<label class="form-label col-3"><span class="c-red">*</span>邮箱：</label>
				<div class="formControls col-5">
					<input type="text" class="input-text" placeholder="@" name="email"
						id="email" datatype="e" nullmsg="请输入邮箱！">
				</div>
				<div class="col-4"></div>
			</div>

			<div class="row cl">
				<label class="form-label col-3">备注：</label>
				<div class="formControls col-5">
					<textarea name="" cols="" rows="" class="textarea"
						placeholder="说点什么...100个字符以内" dragonfly="true"
						onKeyUp="textarealength(this,100)"></textarea>
					<p class="textarea-numberbar">
						<em class="textarea-length">0</em>/100
					</p>
				</div>
				<div class="col-4"></div>
			</div>
			<div class="row cl">
				<div class="col-9 col-offset-3">
					<input class="btn btn-primary radius" type="submit"
						value="&nbsp;&nbsp;提交&nbsp;&nbsp;">
				</div>
			</div>
		</form>
	</div>
	<script type="text/javascript" src="${pageContext.request.contextPath}/lib/jquery/1.9.1/jquery.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/lib/icheck/jquery.icheck.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/lib/Validform/5.3.2/Validform.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/lib/layer/1.9.3/layer.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/H-ui.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/H-ui.admin.js"></script>
	<script type="text/javascript">
$(function(){
	$('.skin-minimal input').iCheck({
		checkboxClass: 'icheckbox-blue',
		radioClass: 'iradio-blue',
		increaseArea: '20%'
	});
	
	$("#form-admin-add").Validform({
		tiptype:2,
		callback:function(form){
			form[0].submit();
			var index = parent.layer.getFrameIndex(window.name);
			parent.$('.btn-refresh').click();
			parent.layer.close(index);
		}
	});
});
</script>
</body>
</html>