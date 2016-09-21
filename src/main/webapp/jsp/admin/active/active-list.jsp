<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
<title>活动列表</title>
</head>
<body>



	<div class="pd-20"  >
	<form action="${ctx }/admin/activity/alllist" method="post">
		<div class="text-c">
		
			日期范围： <input type="text"
				onfocus="WdatePicker({maxDate:'#F{$dp.$D(\'datemax\')||\'%y-%M-%d\'}'})"
				id="datemin" class="input-text Wdate" style="width: 120px;">
			- <input type="text"
				onfocus="WdatePicker({minDate:'#F{$dp.$D(\'datemin\')}',maxDate:'%y-%M-%d'})"
				id="datemax" class="input-text Wdate" style="width: 120px;">
			<input type="text" class="input-text" style="width: 250px"
				placeholder="输入关键词" id="" name="">
			<button type="submit" class="btn btn-success radius" id="" name="">
				<i class="Hui-iconfont">&#xe665;</i> 搜活动
			</button>
		</div>
	</form>
		<div class="cl pd-5 bg-1 bk-gray mt-20">
			<span class="l"><a href="javascript:;" onclick="datadel()"
				class="btn btn-danger radius"><i class="Hui-iconfont">&#xe6e2;</i>
					批量删除</a> <a href="javascript:;"
				onclick="active_add('添加活动','active-add.jsp','','510')"
				class="btn btn-primary radius"><i class="Hui-iconfont">&#xe600;</i>
					添加活动</a><!-- &nbsp;&nbsp;<a href="javascript:;" onclick=""
				class="btn btn-success radius"><i class="Hui-iconfont">&#xe67d;</i>
					</a>&nbsp;&nbsp;<a href="javascript:;" onclick=""
				class="btn btn-success radius"><i class="Hui-iconfont">&#xe63d;</i>
					</a> --></span> <span class="r">共有数据：<strong>88</strong> 条
			</span>
		</div>
		<div class="mt-20">
			<table
				class="table table-border table-bordered table-hover table-bg table-sort">
				<thead>
					<tr class="text-c">
						<th width="25"><input type="checkbox" name="" value=""></th>
						<th width="80">活动编号</th>
						<th width="100">活动名称</th>
						
						<th width="90">可报名额</th>
						<th width="150">举办单位</th>
						<th width="80">工时(/小时)</th>
						<th width="100">报名时间</th>
						<th width="90">开展时间</th>
						<th width="150">活动简介</th>
						<th width="50">状态</th>
						<th width="70">操作</th>
					</tr>
				</thead>
				<tbody>
				<c:if test="${!empty activities }">
				<c:forEach begin="0" end="${ fn:length(activities)-1}" var="i">
				<c:set var="activity" value="${activities[i] }"></c:set>
					<tr class="text-c">
						<td><input type="checkbox" value="1" name=""></td>
						<td>${activity.ac_id }</td>
						<td>${activity.ac_name }</td>
						
						<td>${activity.ac_number }</td>
						<td>${activity.ac_company }</td>
						<td>${activity.ac_hour }</td>
						<td>${activity.ac_begintime }~~${activity.ac_endtime }</td>
						<td>2016-6-18（全天）</td>
						<td>${activity.ac_intro }</td>
						<td><a class="td-status" onClick="active_sign_stop(this)"
							href="javascript:;"> <span class="label label-success radius"
								 title="停用" style="cursor: pointer">报名</span></a> <a  href="javascript:;" onclick="active_add('添加小组','member-divide.jsp','','510')"> <span
								class="label label-success radius" title="停用" style="cursor: pointer">分组 </span>
						</a> 
								<span  class="label label-success radius" style="cursor: pointer" onClick="active_feedback_stop(this)" title="停用">反馈 </span>
						</td>


						<td class="td-manage"><a style="text-decoration: none"
							onClick="member_stop(this,'10001')" href="javascript:;"
							title="停用"><i class="Hui-iconfont">&#xe631;</i></a> <a title="编辑"
							href="javascript:;"
							onclick="member_edit('编辑','active-add.jsp','4','','510')"
							class="ml-5" style="text-decoration: none"><i
								class="Hui-iconfont">&#xe6df;</i></a> <a title="删除"
							href="javascript:;" onclick="member_del(this,'1')" class="ml-5"
							style="text-decoration: none"><i class="Hui-iconfont">&#xe6e2;</i></a></td>
							
					</tr>
					</c:forEach>
					</c:if>
				</tbody>
				
			</table>
		</div>
	</div>



</body>
<script type="text/javascript"
		src="${ctx}/lib/jquery/1.9.1/jquery.min.js"></script>
	<script type="text/javascript" src="${ctx}/lib/layer/1.9.3/layer.js"></script>
	<script type="text/javascript" src="${ctx}/lib/laypage/1.2/laypage.js"></script>
	<script type="text/javascript"
		src="${ctx}/lib/My97DatePicker/WdatePicker.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/lib/datatables/1.10.0/jquery.dataTables.min.js"></script>
	<script type="text/javascript" src="${ctx}/js/H-ui.js"></script>
	<script type="text/javascript" src="${ctx}/js/H-ui.admin.js"></script>
	<script type="text/javascript" src="${ctx}/js/new.js"></script>
	<!-- <script type="text/javascript">

alert("111")
$('#page').jqPaginator({
	totalPages: 2,
    visiblePages: 10,
    currentPage: 1,
    onPageChange: function (num, type) {
    	location.href='${ctx}/admin/activity/alllist?page='+num+'';
    }
/* alert(pageSize) */
});
</script> -->
<script type="text/javascript">
$(function(){
  
  $('.table-sort').dataTable({
		"aaSorting": [[ 1, "desc" ]],//默认第几个排序
		"bStateSave": true,//状态保存
		"aoColumnDefs": [
		  //{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
		  {"orderable":false,"aTargets":[0,9,10]}// 制定列不参与排序
		  ]
		});
});
</script>
</html>