
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
${stu.s_id }
	<div class="pd-20">
		<form action="${ctx }/student/regist" method="post" class="form form-horizontal"
			id="form-member-add">
			<div class="row cl">
				<label class="form-label col-3"><span class="c-red">*</span>姓名：</label>
				<div class="formControls col-5">
					<input type="text" class="input-text" value="" placeholder=""
						id="member-name" name="name" datatype="*2-16" nullmsg="请输入姓名">
				</div>
				<div class="col-4"></div>
			</div>
			<div class="row cl">
				<label class="form-label col-3"><span class="c-red">*</span>身份证号：</label>
				<div class="formControls col-5">
					<input type="text" class="input-text" value="" name="idcard"
						placeholder="请仔细填写身份证号哦" datatype="idcard" nullmsg="请输入正确的身份证号">
				</div>



				<div class="col-4"></div>
			</div>
			<div class="row cl">
				<label class="form-label col-3"><span class="c-red">*</span>性别：</label>
				<div class="formControls col-5 skin-minimal">
					<div class="radio-box" value="" nullmsg="请选择所在系别！">
						<input type="radio" id="sex-1" value="1" 
							name="gender" datatype="*" nullmsg="请选择性别！"> <label
							for="sex-1">男</label>
					</div>
					<div class="radio-box">
						<input type="radio" id="sex-2" name="gender" value="0"> <label
							for="sex-2">女</label>
					</div>

				</div>
				<div class="col-4"></div>
			</div>
			<div class="row cl">
				<label class="form-label col-3"><span class="c-red">*</span>qq：</label>
				<div class="formControls col-5">
					<input type="text" class="input-text" value="" placeholder=""
						id="member-tel" name="qq" datatype="n6-15" nullmsg="请输入qq号">
				</div>
				<div class="col-4"></div>
			</div>
			<div class="row cl">
				<label class="form-label col-3"><span class="c-red">*</span>学号：</label>
				<div class="formControls col-5">
					<input type="text" class="input-text" value="" placeholder=""
						id="member-tel" name="id" datatype="n11-11" nullmsg="请输入11位学号">
				</div>
				<div class="col-4"></div>
			</div>
			<div class="row cl">
				<label class="form-label col-3"><span class="c-red">*</span>手机：</label>
				<div class="formControls col-5">
					<input type="text" class="input-text" value=""
						placeholder="请确保手机畅通" name="phone" datatype="m"
						nullmsg="请输入11位手机号">
				</div>
				<div class="col-4"></div>
			</div>
			
			<div class="row cl">
				<label class="form-label col-3" name="mail"><span
					class="c-red">*</span>邮箱：</label>
				<div class="formControls col-5">
					<input type="text" class="input-text" placeholder="@" name="email"
						id="email" datatype="e" nullmsg="请输入邮箱！">
				</div>
				<div class="col-4"></div>
			</div>
			<div class="row cl">
				<label class="form-label col-3"><span class="c-red">*</span>辅导员姓名：</label>
				<div class="formControls col-5">
					<input type="text" class="input-text" value="" placeholder=""
						name="teacher" datatype="*2-16" nullmsg="请输入辅导员姓名">
				</div>
				<div class="col-4"></div>
			</div>
			<div class="row cl">
				<label class="form-label col-3"><span class="c-red">*</span>辅导员电话：</label>
				<div class="formControls col-5">
					<input type="text" class="input-text" value="" placeholder=""
						id="member-tel" name="t_phone" datatype="m" nullmsg="请输入电话号码">
				</div>
				<div class="col-4"></div>
			</div>

			<div class="row cl">
				<label class="form-label col-3"><span class="c-red">*</span>系别：</label>
				<div class="formControls col-5" style="width: 210px">
					<span class="select-box"> <select class="select" size="1"
						name="system" datatype="*" nullmsg="请选择所在系别！">
							<option value="" selected>请选择系别</option>
							<option value="1">数艺系</option>
							<option>信管系</option>
							<option>计科系</option>
							<option>外语系</option>
					</select>
					</span>
				</div>
		
				<div class="col-4"></div>
			</div>
			<div class="row cl">
				<label class="form-label col-3"><span class="c-red">*</span>尺码：</label>
				
				<div class="formControls col-5" style="width: 210px">
					<span class="select-box"> <select class="select" size="1"
						name="size" datatype="*" nullmsg="请选择衣服尺寸！">
							<option value="" selected>请选择衣服尺寸</option>
							<option value="1">S</option>
							<option value="2">M</option>
							<option value="3">L</option>
							<option value="4">XL</option>
							<option value="5">XXL</option>
							<option value="6">XXXL</option>
					</select>
					</span>
				</div>
				<div class="col-4"></div>
			</div>
			<div class="row cl">
				<label class="form-label col-3"><span class="c-red">*</span>团队：</label>
				<div class="formControls col-5">
					<div class="formControls col-5" style="width: 210px">
						<span class="select-box"> <select class="select" id="team"
							size="1" name="team" datatype="*" nullmsg="请选择所在团队！"
							>
								<option value="" selected>请选择团队</option>
								<option value="1">青协</option>
								<option value="2">学生会</option>
								<option value="3">社联</option>
								<option value="4">院团委</option>
								<option value="5">分团委</option>
								<option value="6">其他</option>
								<option value="7">个人</option>
						</select>

						</span>
					</div>
					
				</div>
				<div class="col-4"></div>
			</div>
			<div class="row cl">
				<label class="form-label col-3">个人介绍：</label>
				<div class="formControls col-5">
					<textarea name="view" cols="" rows="" class="textarea"
						placeholder="说点什么吧，10-100个字符...提交不成功请咨询管理员" datatype="*10-100"
						dragonfly="true" onKeyUp="textarealength(this,100)"></textarea>
					<p class="textarea-numberbar">
						<em class="textarea-length">0</em>/100
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