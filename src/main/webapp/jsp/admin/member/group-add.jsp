<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
<link href="${pageContext.request.contextPath}/css/H-ui.min.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/H-ui.admin.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/lib/icheck/icheck.css"
	rel="stylesheet" type="text/css" />
<link
	href="${pageContext.request.contextPath}/lib/Hui-iconfont/1.0.1/iconfont.css"
	rel="stylesheet" type="text/css" />
<link
	href="${pageContext.request.contextPath}/lib/webuploader/0.1.5/webuploader.css"
	rel="stylesheet" type="text/css" />

<!--[if IE 6]>
<script type="text/javascript" src="lib/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>DD_belatedPNG.fix('*');</script>
<![endif]-->
<title>小组分配</title>
</head>
<body>
	<div class="pd-20">
		<form action="" method="post" class="form form-horizontal"
			id="form-active-add">
			<div class="row cl">
				<label class="form-label col-2"><span class="c-red">*</span>组别：</label>
				<div class="formControls col-6">
					<input type="text" class="input-text" value="" placeholder="10个字以内"
						id="active-name" name="active-name" datatype="*1-10"
						nullmsg="请输入小组名称">
				</div>
				<div class="col-4"></div>
			</div>



			<div class="row cl">
				<label class="form-label col-2"><span class="c-red">*</span>人数：</label>
				<div class="formControls col-6">
					<input type="text" class="input-text" value="" placeholder="数字"
						id="active-name" name="active-name" datatype="n1-100"
						nullmsg="请标明名额">
				</div>
				<div class="col-4"></div>
			</div>
			
			<div class="row cl">
				<label class="form-label col-2"><span class="c-red">*</span>组员：</label>
				<div class="formControls col-6">
					<input type="text" class="input-text" value="" placeholder="150个字以内"
						id="active-name" name="active-name" datatype="*2-150"
						nullmsg="请选择组员">
				</div>
				<div class="col-4"></div>
			</div>

			<div class="row cl">
		<label class="form-label col-2"><span class="c-red">*</span>未分组人员：</label>
		<div class="formControls col-6">
			<input type="checkbox" name="" value=""><u style="cursor: pointer" class="text-primary"
											onclick="member_show('张三','${pageContext.request.contextPath}/jsp/user/member-show.jsp','10001','500','360')">张三</u>
					
										
		</div>
		<div class="col-4"></div>
	</div>
	
	<div class="row cl">
		<label class="form-label col-2"><span class="c-red">*</span>岗位职责：</label>
		<div class="formControls col-6">
			<input type="text" class="input-text" value="" placeholder="30个字以内"
				id="active-name" name="active-name" datatype="*1-30"
				nullmsg="请简要说明岗位职责">
		</div>
		<div class="col-4"></div>
	</div>


	<div class="row cl">
		<div class="col-9 col-offset-2">
			<input class="btn btn-primary radius" type="submit"
				value="&nbsp;&nbsp;提交&nbsp;&nbsp;">
		</div>
<div class="col-4"></div>
	</div>
	
	
	</form>
	</div>



</body>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/lib/layer/1.9.3/layer.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/lib/My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/lib/icheck/jquery.icheck.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/lib/Validform/5.3.2/Validform.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/lib/webuploader/0.1.5/webuploader.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/lib/ueditor/1.4.3/ueditor.config.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/lib/ueditor/1.4.3/ueditor.all.min.js"> </script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/lib/ueditor/1.4.3/lang/zh-cn/zh-cn.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/H-ui.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/H-ui.admin.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/lib/datatables/1.10.0/jquery.dataTables.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/lib/laypage/1.2/laypage.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/new.js"></script>
<script type="text/javascript">
$(function(){
 /*  $('.skin-minimal input').iCheck({
    checkboxClass: 'icheckbox-blue',
    radioClass: 'iradio-blue',
    increaseArea: '20%'
  }); */
  
  $("#form-active-add").Validform({
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
</html>