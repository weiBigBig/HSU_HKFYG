<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
<script type="text/javascript" src="./lib/html5.js"></script>
<script type="text/javascript" src="./lib/respond.min.js"></script>
<script type="text/javascript" src="./lib/PIE_IE678.js"></script>
<![endif]-->
<link href="${ctx}/css/H-ui.min.css" rel="stylesheet" type="text/css" />
<link href="${ctx}/css/H-ui.admin.css" rel="stylesheet" type="text/css" />
<link href="${ctx}/lib/Hui-iconfont/1.0.1/iconfont.css" rel="stylesheet"
	type="text/css" />
<!--[if IE 6]>
<script type="text/javascript" src="http://lib.h-ui.net/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>DD_belatedPNG.fix('*');</script>
<![endif]-->
<title>用户管理</title>
</head>
<body>

	<div class="pd-20" >
	<form action="${ctx}/admin/studentList" id="enrollerForm" method="post">
		
		<div class="text-c">
<!-- 			<label class="form-label col-3"><span class="c-red">*</span>系别：</label>
 -->
 
 <div class="formControls col-2"  style="float:left;">
					<span class="select-box"> <select class="select" size="1"
						name="system" >
							<option value="" selected>请选择年级</option>
							<option value="1">13级</option>
							<option>14级</option>
							<option>15级</option>
							<option>16级</option>
							<option>17级</option>
					</select>
					
					</span>
					
				</div>	
				<button type="submit" style="float:left;" class="btn btn-success radius" id="" name=""  >
				<i class="Hui-iconfont">&#xe665;</i> 搜青椒
			</button>	
				
			<input type="text" class="input-text" style="width: 250px"
				placeholder="输入姓名" id="" name="searchBox">
				
			<button type="submit" class="btn btn-success radius" id="" name=""  >
				<i class="Hui-iconfont">&#xe665;</i> 搜青椒
			</button>
			
		</div>
		<div class="cl pd-5 bg-1 bk-gray mt-20">
			<span class="l"><a href="javascript:;" onclick="datadel()"
				class="btn btn-danger radius"><i class="Hui-iconfont">&#xe6e2;</i>
					批量删除</a> <a href="javascript:;"
				onclick="member_add('添加用户','${ctx}/jsp/user/member-add.jsp','','510')"
				class="btn btn-primary radius"><i class="Hui-iconfont">&#xe600;</i>
					添加用户</a></span> <span class="r">共有数据：<strong>88</strong> 条
			</span>
		</div>
		<div  class="mt-20">			
			<table class="table table-border table-bordered table-hover table-bg table-sort">
				<thead>
					<tr class="text-c">
						<th width="25"><input type="checkbox" name="" value=""></th>
						<th width="80">学号</th>
						<th width="100">青椒名</th>
						<th width="40">性别</th>
						<th width="90">团队</th>
						
						<th width="50">系别</th>
						
						<th width="130">加入时间</th>
						<th width="130">累计工时/小时</th>
						<th width="70">状态</th>
						<th width="100">操作</th>
					</tr>

				</thead>
				<tbody>
				<c:if test="${!empty results }">
					<c:forEach begin="0" end="${ fn:length(results)-1}" var="i">
					<c:set var="student" value="${results[i] }"></c:set>
					<tr class="text-c">
					<td><input type="checkbox" value="1" name=""></td>
						<td>${student.s_id}</td>
						<td><u style="cursor: pointer" class="text-primary"
							onclick="member_show('张三','${pageContext.request.contextPath}/jsp/user/member-show.jsp','10001','360','400')">${student.s_name}</u>
							</td>
						<td>${student.s_sex}</td>
						<td>${student.team}</td>
						
						<td>${student.s_department}</td>
						
						<td>${student.s_jointime}</td>
						<td>${student.s_totalhours}</td>
						<td class="td-status"><span
							class="label label-success radius">已启用</span></td>
						<td class="td-manage"><a style="text-decoration: none"
							onClick="member_stop(this,'10001')" href="javascript:;"
							title="停用"><i class="Hui-iconfont">&#xe631;</i></a> <!-- <a title="编辑"
							href="javascript:;"
							onclick="member_edit('编辑','member-add.html','4','','510')"
							class="ml-5" style="text-decoration: none"><i
								class="Hui-iconfont">&#xe6df;</i></a> --> <a
							style="text-decoration: none" class="ml-5"
							onClick="change_password('修改密码','${pageContext.request.contextPath}/jsp/base/change-password.jsp','10001','600','270')"
							href="javascript:;" title="修改密码"><i class="Hui-iconfont">&#xe63f;</i></a>
							<a title="删除" href="javascript:;" onclick="member_del(this,'1')"
							class="ml-5" style="text-decoration: none"><i
								class="Hui-iconfont">&#xe6e2;</i></a></td>
						
					</tr>
					</c:forEach>
						</c:if>
				</tbody>
			</table>
		</form>
		</div>
	<script type="text/javascript" src="${ctx}/lib/jquery/1.9.1/jquery.min.js"></script>
	<script type="text/javascript" src="${ctx}/lib/layer/1.9.3/layer.js"></script>	
	<script type="text/javascript" src="${ctx}/lib/laypage/1.2/laypage.js"></script>
	<script type="text/javascript" src="${ctx}/lib/My97DatePicker/WdatePicker.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/lib/datatables/1.10.0/jquery.dataTables.min.js"></script>
	<script type="text/javascript" src="${ctx}/js/H-ui.js"></script>
	<script type="text/javascript" src="${ctx}/js/H-ui.admin.js"></script>
	<script type="text/javascript" src="${ctx}/js/new.js"></script>
		<script type="text/javascript" >
		
		$(function(){
			$('.table-sort').dataTable({
				"aaSorting": [[ 1, "desc" ]],//默认第几个排序
				"bStateSave": true,//状态保存
				"aoColumnDefs": [
				  //{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
				  {"orderable":false,"aTargets":[0,8,9]}// 制定列不参与排序
				  ]
				});
			
		});
		</script>
	
</body>
</html>