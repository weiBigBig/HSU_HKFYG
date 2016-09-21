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


<!--[if IE 6]>
<script type="text/javascript" src="lib/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>DD_belatedPNG.fix('*');</script>
<![endif]-->

<title>小组情况</title>

</head>
<body>
	<div class="pd-20">

		<div id="tab-system" class="HuiTab">
			
			
			
				<div class="pd-20">
				<div class="formControls col-3"  style="float:left;">
					<span class="select-box"> <select class="select" size="1"
						name="system" >
							<option value="" selected>请选择活动</option>
							<option value="1">2016061801双遗马拉松</option>
							<option>2016061901兰苑敬老院</option>
							<option>2016062001三下乡</option>
							
					</select>
					
					</span>
					
				</div>	
				<button type="submit" style="float:left;" class="btn btn-success radius" id="" name=""  >
				<i class="Hui-iconfont">&#xe665;</i> 搜活动
			</button>	
					<div class="text-c">
						<input type="text" class="input-text" style="width: 250px"
							placeholder="输入姓名、电话、qq" id="" name="">
						<button type="submit" class="btn btn-success radius" id="" name="">
							<i class="Hui-iconfont">&#xe665;</i> 搜青椒
						</button>
					</div>
					<div class="cl pd-5 bg-1 bk-gray mt-20">
						<span class="l"><a href="javascript:;" onclick="datadel()"
							class="btn btn-danger radius"><i class="Hui-iconfont">&#xe6e2;</i>
								批量删除</a> <a href="javascript:;"
							onclick="member_add('添加小组','group-add.jsp','','510')"
							class="btn btn-primary radius"><i class="Hui-iconfont">&#xe600;</i>
								添加小组</a></span> <span class="r">共有数据：<strong>88</strong> 条
						</span>
					</div>
					<div class="mt-20">
						<table
							class="table table-border table-bordered table-hover table-bg table-sort">
							<thead>
								<tr class="text-c">
									<th width="25"><input type="checkbox" name="" value=""></th>
									<th width="150">活动编号名称</th>
									<th width="80">组别</th>
									<th width="80">人数/人</th>
									<th width="100">组长</th>
									<th width="200">组员</th>
									<th width="90">岗位职责</th>
									
								</tr>
							</thead>
							<tbody>
								<tr class="text-c">
									<td><input type="checkbox" value="1" name=""></td>
									<td>2016061801双遗马拉松</td>
									<td>裁判1组</td>
									<td>7</td>
									<td><span style="cursor: pointer" class="text-primary"
										onclick="member_show('张三','${pageContext.request.contextPath}/jsp/user/member-show.jsp','10001','500','400')" title="学号">张三</span></td>
									<td>
									<span style="cursor: pointer" class="text-primary"
										onclick="member_show('张三','${pageContext.request.contextPath}/jsp/user/member-show.jsp','10001','500','400')" title="学号">李四</span>&nbsp;&nbsp;
									<span	onclick="member_show('张三','${pageContext.request.contextPath}/jsp/user/member-show.jsp','10001','360','400')" title="学号">王二</span>&nbsp;&nbsp;
									<span style="cursor: pointer" class="text-primary"
										onclick="member_show('张三','${pageContext.request.contextPath}/jsp/user/member-show.jsp','10001','500','400')" title="学号">小赵</span>&nbsp;&nbsp;
									<span style="cursor: pointer" class="text-primary"
										onclick="member_show('张三','${pageContext.request.contextPath}/jsp/user/member-show.jsp','10001','500','400')" title="学号">小孙</span>&nbsp;&nbsp;
									<span style="cursor: pointer" class="text-primary"
										onclick="member_show('张三','${pageContext.request.contextPath}/jsp/user/member-show.jsp','10001','500','400')" title="学号">小李</span>&nbsp;&nbsp;
									<span style="cursor: pointer" class="text-primary"
										onclick="member_show('张三','${pageContext.request.contextPath}/jsp/user/member-show.jsp','10001','500','400')" title="学号">小伟</span>&nbsp;&nbsp;
									
									
									<td>协助裁判管理计时器</td>
									
									
								</tr>
								
							</tbody>
						</table>
					</div>
				</div>



			</div>
			
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

  $('.table-sort').dataTable({
		"aaSorting": [[ 1, "desc" ]],//默认第几个排序
		"bStateSave": true,//状态保存
		"aoColumnDefs": [
		  //{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
		  {"orderable":false,"aTargets":[0,6]}// 制定列不参与排序
		  ]
		});
});

</script>
</html>