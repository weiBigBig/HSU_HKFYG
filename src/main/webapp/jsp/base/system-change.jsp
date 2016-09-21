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
<link href="${ctx }/lib/icheck/icheck.css" rel="stylesheet"
	type="text/css" />
<link href="${ctx }/lib/Hui-iconfont/1.0.1/iconfont.css"
	rel="stylesheet" type="text/css" />
<!--[if IE 6]>
<script type="text/javascript" src="http://lib.h-ui.net/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>DD_belatedPNG.fix('*');</script>
<![endif]-->
<title>修改系统参数</title>
</head>
<body>

	<div class="pd-20">
		<form action="${ctx }/student/regist" method="post"
			class="form form-horizontal" id="form-member-add">
			
			<div class="row cl">
				<label class="form-label col-3">团队：</label>
				<div class="formControls col-5">
					<textarea name="view" cols="" rows="" class="textarea"
						placeholder="请将设置的选项用逗号隔开" datatype="*10-100"
						dragonfly="true" onKeyUp="textarealength(this,100)">青协，学生会，社联，院团委，分团委，其他，个人</textarea>
					<p class="textarea-numberbar">
						<em class="textarea-length">23</em>/100
					</p>
				</div>
				<div class="col-4"></div>
			</div>
			<div class="row cl">
				<label class="form-label col-3">系别：</label>
				<div class="formControls col-5">
					<textarea name="view" cols="" rows="" class="textarea"
						placeholder="请将设置的选项用逗号隔开" datatype="*10-100"
						dragonfly="true" onKeyUp="textarealength(this,100)">数艺系，信管系，计科系，外语系</textarea>
					<p class="textarea-numberbar">
						<em class="textarea-length">15</em>/100
					</p>
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
	
	<script type="text/javascript"
		src="${ctx }/lib/jquery/1.9.1/jquery.min.js"></script>
	<script type="text/javascript"
		src="${ctx }/lib/icheck/jquery.icheck.min.js"></script>
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
}  *///报错 提交前会检验性别是否为空
/* function check_team() */
/* {
  var team1=document.getElementById('team');
  if(team1.options[team1.selectedIndex].text=="其他"){
    document.getElementById('team2').hidden="";
  
  }else document.getElementById('team2').hidden="true";
  
  
}  */
</script>
</body>
</html>