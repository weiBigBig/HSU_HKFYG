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
<title>用户管理</title>
</head>
<body>

	<div class="pd-20">
		<%-- <form action="${ctx}/admin/enrollerList" id="enrollerForm"
			method="post">
 --%>
			<div class="text-c">
				<!-- 			<label class="form-label col-3"><span class="c-red">*</span>系别：</label>
 -->

				<div class="formControls col-2" style="float: left;">
					<span class="select-box"> <select class="select" size="1"
						name="system">
							<option value="" selected>请选择活动</option>
							<option value="1">2016061801双遗马拉松</option>
							<option>2016062001兰苑敬老院</option>
							<option>2016080101三下乡</option>
					</select>

					</span>

				</div>
				<button type="submit" style="float: left;"
					class="btn btn-success radius" id="" name="">
					<i class="Hui-iconfont">&#xe665;</i> 搜活动
				</button>

				<input type="text" class="input-text" style="width: 250px"
					placeholder="输入姓名" id="" name="searchBox">

				<button type="submit" class="btn btn-success radius" id="" name="">
					<i class="Hui-iconfont">&#xe665;</i> 搜青椒
				</button>

			</div>
			<div class="cl pd-5 bg-1 bk-gray mt-20">
				<span class="l"><a href="javascript:;" onclick="datadel()"
					class="btn btn-danger radius"><i class="Hui-iconfont">&#xe6e2;</i>
						批量删除</a> <a href="javascript:;"
					onclick="member_add('小组均分','member-divide.jsp','','510')"
					class="btn btn-success radius"><i class="Hui-iconfont">&#xe611;</i>
						小组均分</a></span> <span class="r">共有数据：<strong>88</strong> 条
				</span>
			</div>
			<div class="mt-20">
				<table
					class="table table-border table-bordered table-hover table-bg table-sort">
					<thead>
						<tr class="text-c">
							<th width="25"><input type="checkbox" name="" value=""></th>
							<th width="80">学号</th>
							<th width="100">青椒名</th>
							<th width="40">性别</th>
							<th width="90">团队</th>

							<th width="50">系别</th>

							
							<th width="130">报名活动</th>
							<th width="70">状态</th>
							<th width="100">操作</th>
						</tr>

					</thead>
					<tbody>
						<c:choose>
							<c:when test="${fn:length(results) eq 0 }">
								<c:out value="${results.size}"></c:out>
								<span>查询的结果 不存在</span>
							</c:when>
							<c:otherwise>
								<c:forEach begin="0" end="${ fn:length(results)-1}" var="i">
									<c:set var="student" value="${results[i] }"></c:set>
									<tr class="text-c">
										<td><input type="checkbox" value="1" name=""></td>
										<td>1</td>
										<td><u style="cursor: pointer" class="text-primary"
											onclick="member_show('张三','${ctx}/admin/member/member-show.jsp','10001','360','400')"></u>${student.stu_name}
										</td>
										<td>${student.gender}</td>
										<td>团队</td>

										<td>数艺系</td>

										
										<td title="2016061801">双遗马拉松</td>
										<td class="td-status"><span
											class="label label-success radius">未分组</span></td>
										<td class="td-manage"><a style="text-decoration: none"
											onClick="member_stop(this,'10001')" href="javascript:;"
											title="停用"><i class="Hui-iconfont">&#xe631;</i></a> <a
											title="编辑" href="javascript:;"
											onclick="member_edit('编辑','${ctx}/admin/member/member-add.jsp','4','','510')"
											class="ml-5" style="text-decoration: none"><i
												class="Hui-iconfont">&#xe6df;</i></a> <a
											style="text-decoration: none" class="ml-5"
											onClick="change_password('修改密码','${ctx}/admin/other/change-password.jsp','10001','600','270')"
											href="javascript:;" title="修改密码"><i class="Hui-iconfont">&#xe63f;</i></a>
											<a title="删除" href="javascript:;"
											onclick="member_del(this,'1')" class="ml-5"
											style="text-decoration: none"><i class="Hui-iconfont">&#xe6e2;</i></a></td>
									</tr>
								</c:forEach>
							</c:otherwise>
						</c:choose>
					
					</tbody>
				</table>
				</div>
		
	</div>

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
	<script type="text/javascript">
		$(function() {
			$('.table-sort').dataTable({
				"aaSorting" : [ [ 1, "desc" ] ],//默认第几个排序
				"bStateSave" : true,//状态保存
				"aoColumnDefs" : [
				//{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
				{
					"orderable" : false,
					"aTargets" : [ 0,8 ]
				} // 制定列不参与排序
				]
			});

		});
	</script>

</body>
</html>