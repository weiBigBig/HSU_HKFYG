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
<title>活动发布</title>
</head>
<body>
	<div class="pd-20">
		<form action="${ctx}/admin/activity/issue" method="post" class="form form-horizontal"
			id="form-active-add">
			<div class="row cl">
				<label class="form-label col-2"><span class="c-red">*</span>活动名称：</label>
				<div class="formControls col-6">
					<input type="text" class="input-text" value="" placeholder="20个字以内"
						id="active-name" name="ac_name" datatype="*1-20"
						nullmsg="请输入活动名称">
				</div>
				<div class="col-4"></div>
			</div>


			<div class="row cl">
				<label class="form-label col-2"><span class="c-red">*</span>报名对象：</label>
				<div class="formControls col-6">
					<input type="text" class="input-text" value="" placeholder="20个字以内"
						id="active-name" name="active-name" datatype="*1-20"
						nullmsg="请描述可报名的对象">
				</div>
				<div class="col-4"></div>
			</div>

			<div class="row cl">
				<label class="form-label col-2"><span class="c-red">*</span>可报名额：</label>
				<div class="formControls col-6">
					<input type="text" class="input-text" value="" placeholder="数字"
						id="active-name" name="ac_number" datatype="n1-50000"
						nullmsg="请标明名额">
				</div>
				<div class="col-4"></div>
			</div>
			<div class="row cl">
				<label class="form-label col-2"><span class="c-red">*</span>举办单位：</label>
				<div class="formControls col-6">
					<input type="text" class="input-text" value="" placeholder="30个字以内"
						id="active-name" name="ac_company" datatype="*1-20"
						nullmsg="请注明举办单位">
				</div>
				<div class="col-4"></div>
			</div>


			<div class="row cl">
				<label class="form-label col-2"><span class="c-red">*</span>完整工时：</label>
				<div class="formControls col-6">
					<input type="text" class="input-text" value="" placeholder="数字"
						id="active-name" name="ac_hour" datatype="n1-50000"
						nullmsg="请标明完整工时">
				</div>
				<div class="col-4"></div>
			</div>
			<div class="row cl">
				<label class="form-label col-2"><span class="c-red">*</span>报名时间：</label>
				<input type="text" onfocus="WdatePicker()" id="logmin"
					class="input-text Wdate" name="ac_begintime" style="width: 120px;"> - <input
					type="text" onfocus="WdatePicker()" id="logmax"
					class="input-text Wdate" name="ac_endtime" style="width: 120px;">
			</div>
			<div class="row cl">
				<label class="form-label col-2"><span class="c-red">*</span>开展时间：</label>
				<div class="formControls col-6">
					<input type="text" class="input-text" value="" placeholder="20个字以内"
						id="active-name" name="ac_starttime" datatype="*1-20"
						nullmsg="请标明活动开展的具体时间">
				</div>
				<div class="col-4"></div>
			</div>



			<div class="row cl">
				<label class="form-label col-2">活动简介：</label>
				<div class="formControls col-6">
					<textarea class="textarea" class="input-text" value=""
						placeholder="请说明活动开展地点，意义等（10-100个字以内）" id="active-name"
						name="ac_introduce" datatype="*10-100" dragonfly="true" onKeyUp="textarealength(this,100)"></textarea>
						<p class="textarea-numberbar">
						<em class="textarea-length">0</em>/100
					</p>
				</div>
			

				
				
				
				
				
			</div>
			<div class="row cl">
				<div class="col-9 col-offset-2">
					<input class="btn btn-primary radius" type="submit"
						value="&nbsp;&nbsp;提交&nbsp;&nbsp;">
				</div>
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
   /* $('.skin-minimal input').iCheck({
    checkboxClass: 'icheckbox-blue',
    radioClass: 'iradio-blue',
    increaseArea: '20%'
  });  */
  
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