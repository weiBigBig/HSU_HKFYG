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
	content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,member-scalable=no" />
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


<title>添加反馈</title>

</head>
<body>
	<div class="pd-20">
		<form action="" method="post" class="form form-horizontal"
		id="feedback-add">
		<div class="row cl">
			<label class="form-label col-2"><span class="c-red">*</span>团队：</label>
			<div class="formControls col-5">
			
				<input type="text" class="input-text" value="" placeholder="请记录各个团队名称，并以逗号分隔"
				id="" name="">
			</div>
		</div>

		<div class="row cl">
			
		<label class="form-label col-2"><span class="c-red">*</span>反馈类型：</label>
		<div class="formControls col-5">
			<span class="select-box" > <select name="" class="select">
				<option value="0">活动心得</option>
				<option value="1">活动建议</option>
			</select>
		</span>
	</div>

</div>


	<div class="row cl">
		<label class="form-label col-2">反馈正文：</label>
		<div class="formControls col-10" >
			<div class="formControls col-7"  >
				<textarea name="view" cols="" rows="" style="width:630px; height:300px;"   class="textarea"
						placeholder="感谢您抽出宝贵时间对活动做出反馈！（10-300个字以内，如果超越字数限制，请以附件形式发送至相关活动负责人邮箱）" datatype="*10-300"
						dragonfly="true" onKeyUp="textarealength(this,300)"></textarea>
					<p class="textarea-numberbar">
						<em class="textarea-length">0</em>/300
					</p>
			    
			</div>
		</div>
	
				<div class="col-4"></div>
	</div>

	<div class="row cl">
		<div class="col-10 col-offset-2">
			<button onClick="article_save_submit();"
			class="btn btn-primary radius" type="submit">
			<i class="Hui-iconfont">&#xe632;</i> 提交
		</button>
		<button onClick="layer_close();" class="btn btn-default radius"
		type="button">&nbsp;&nbsp;取消&nbsp;&nbsp;</button>
	</div>
</div>
</div>

</form>
</div>
</body>
<script type="text/javascript" src="${pageContext.request.contextPath}/lib/jquery/1.9.1/jquery.min.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/lib/layer/1.9.3/layer.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/lib/icheck/jquery.icheck.min.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/lib/Validform/5.3.2/Validform.min.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/lib/webuploader/0.1.5/webuploader.min.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/lib/ueditor/1.4.3/ueditor.config.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/lib/ueditor/1.4.3/ueditor.all.min.js"> </script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/lib/ueditor/1.4.3/lang/zh-cn/zh-cn.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/js/H-ui.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/js/H-ui.admin.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/lib/datatables/1.10.0/jquery.dataTables.min.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/lib/laypage/1.2/laypage.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/js/new.js"></script> 
<script type="text/javascript">
$(function(){
 /*  $('.skin-minimal input').iCheck({
    checkboxClass: 'icheckbox-blue',
    radioClass: 'iradio-blue',
    increaseArea: '20%'
  }); */
  
  $("#feedback-add").Validform({
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

