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
	content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,member-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<!--[if lt IE 9]>
<script type="text/javascript" src="lib/html5.js"></script>
<script type="text/javascript" src="lib/respond.min.js"></script>
<script type="text/javascript" src="lib/PIE_IE678.js"></script>
<![endif]-->
<link href="${ctx }/css/H-ui.min.css" rel="stylesheet" type="text/css" />
<link href="${ctx }/css/H-ui.admin.css" rel="stylesheet" type="text/css" />
<link href="${ctx }/lib/icheck/icheck.css" rel="stylesheet" type="text/css" />
<link href="${ctx }/lib/Hui-iconfont/1.0.1/iconfont.css" rel="stylesheet"
	type="text/css" />
<!--[if IE 6]>
<script type="text/javascript" src="http://lib.h-ui.net/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>DD_belatedPNG.fix('*');</script>
<![endif]-->
<title>注册</title>
</head>
<body>
${errMsg}
	<div class="pd-20">
		<form action="${ctx }/student/regist" method="post" class="form form-horizontal"
			id="form-member-add">
			<div class="row cl">
				<label class="form-label col-3"><span class="c-red">*</span>姓名：</label>
				<div class="formControls col-5">
					<input type="text" class="input-text" value="${stu.s_name }" placeholder=""
						id="member-name" name="name" datatype="*2-16" nullmsg="请输入姓名">
				</div>
				<div class="col-4"></div>
			</div>
			<div class="row cl">
				<label class="form-label col-3"><span class="c-red">*</span>身份证号：</label>
				<div class="formControls col-5">
					<input type="text" class="input-text" value="${stu.s_pid }" name="idcard"
						placeholder="请仔细填写身份证号哦" datatype="idcard" nullmsg="请输入正确的身份证号">
				</div>



				<div class="col-4"></div>
			</div>
			
			<div class="row cl">
				<label class="form-label col-3"><span class="c-red">*</span>学号：</label>
				<div class="formControls col-5">
					<input type="text" class="input-text" value="${stu.s_id }" placeholder=""
						id="member-tel" name="id" datatype="n11-11" nullmsg="请输入11位学号">
				</div>
				<div class="col-4"></div>
			</div>
			
			
			<div class="row cl">
				<label class="form-label col-3" name="mail"><span
					class="c-red">*</span>邮箱：</label>
				<div class="formControls col-5">
					<input type="text" value="${stu.s_email }" class="input-text" placeholder="@" name="email"
						id="email" datatype="e" nullmsg="请输入邮箱！">
				</div>
				<div class="col-4"></div>
			</div>
			<div class="row cl">
				<label class="form-label col-3"><span class="c-red">*</span>密码：</label>
				<div class="formControls col-5">
					<input type="password" class="input-text" autocomplete="off"
						 name="new-password" id="new-password"
						datatype="*6-18" >
				</div>
				<div class="col-4"></div>
			</div>
			<div class="row cl">
				<label class="form-label col-3"><span class="c-red">*</span>确认密码：</label>
				<div class="formControls col-5">
					<input type="password" class="input-text" autocomplete="off"
						 name="new-password2" id="new-password2"
						recheck="new-password" datatype="*6-18" errormsg="您两次输入的密码不一致！"
						>
				</div>
				<div class="col-4"></div>
			</div>
			<div class="row cl">
				<div class="col-9 col-offset-3">
					<input class="btn btn-primary radius" type="submit"
						value="&nbsp;&nbsp;提交&nbsp;&nbsp;" onsubmit="member_add_submit()">
				</div>
			</div>
		</form>
	</div>
	
	<script type="text/javascript" src="${ctx }/lib/jquery/1.9.1/jquery.min.js"></script>
	<script type="text/javascript" src="${ctx }/lib/icheck/jquery.icheck.min.js"></script>
	<script type="text/javascript"
		src="${ctx }/lib/Validform/5.3.2/Validform.min.js"></script>
	<script type="text/javascript" src="${ctx }/lib/layer/1.9.3/layer.js"></script>
	<script type="text/javascript" src="${ctx }/js/H-ui.js"></script>
	<script type="text/javascript" src="${ctx }/js/H-ui.admin.js"></script>
	<script type="text/javascript">
$(function(){
 /*  $('.skin-minimal input').iCheck({
    checkboxClass: 'icheckbox-blue',
    radioClass: 'iradio-blue',
    increaseArea: '20%'
  }); */
  
  $("#form-member-add").Validform({
    tiptype:2,
    callback:function(form){
      form[0].submit();
      var index = parent.layer.getFrameIndex(window.name);
      parent.$('.btn-refresh').click();
      parent.layer.close(index);
    }
  });
});
/* if(${stu.s_sex}==1){
	var male=document.getElementById("sex-1");
	male.checked="checked";
}else if(${stu.s_sex}==0){
	document.getElementById("sex-2").checked="checked";
} *///报错，提交前性别会被判断是否为空
/* function check_team()
{
  var team1=document.getElementById('team');
  if(team1.options[team1.selectedIndex].text=="其他"){
    document.getElementById('team2').hidden="";
  
  }else document.getElementById('team2').hidden="true";
  
  
} */
</script>
</body>
</html>