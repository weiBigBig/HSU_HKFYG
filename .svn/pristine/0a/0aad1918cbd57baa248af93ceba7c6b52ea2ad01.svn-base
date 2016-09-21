<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="ctx" value="${pageContext.request.contextPath}" />


<!DOCTYPE html>
<html>
<head>
	<title>成都东软青协活动报名处</title>
	<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7; IE=EmulateIE9">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no"/>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/styles.css" media="all" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/demo.css" media="all" />
</head>
<body style="background:url(${pageContext.request.contextPath}/images/bgnoise_lg.png);">	
	<div class="container">
		 <!-- freshdesignweb top bar -->
		<div class="freshdesignweb-top">
			<a  href="javascript:;" onclick="active_add('通知','${ctx}/jsp/user/information-list.jsp','','510')">通知</a>
			<form action="${ctx }/student/detailInfo" method="post" name="actionForm">
			<span class="right" >
			<input type="hidden" name="s_id" value="${stu.s_id }">
<%-- 			<input  type="submit" value="${stu.s_name}">
 --%>		<a  href="javascript:;" onclick="tosubmit()">${stu.s_name}</a>
			<input type="hidden" id="rootBase" value="${ctx }">
			</span>
			</form>
			<div class="clr"></div>
		</div> <!-- / freshdesignweb top bar  -->
		<header> 
			<h1><span>Neusoft</span>We Need You,Volunteer</h1>
		</header>       
		<!--  start header here -->
		<header>
		
			<div id="fdw-pricing-table">	
				<c:if test="${!empty activities }">
				<c:forEach begin="0" end="${ fn:length(activities)-1}" var="i">
				<c:set var="activity" value="${activities[i] }"></c:set>		
				<div class="plan plan4">
					<div class="header" title="活动在都江堰和青城山沿途展开，&#10;积极参与志愿者活动，&#10;可以丰富大学生活，&#10;后期会有证书及优秀志愿者评选，&#10;望大家积极参与">${activity.ac_name }</div>
						${activity.enroll }				
					<div class="monthly">剩余名额</div>      
					<div class="price">${activity.ac_lnumber }</div>  
					<ul>
						<li><b>完整工时</b>${activity.ac_hour }小时</li>	
						<li><b>报名时间</b> ${activity.ac_begintime }-${activity.ac_endtime }</li>
						<li><b>开展时间</b> 2016年6月18日全天</li>
						<li><b>举办单位</b> ${activity.ac_company }</li>

					</ul>
					<ul>
					
					<c:if test="${activity.enroll==0 }">
						<li>       
						<a class="signup" href="javascript:;" onclick="active_add('您正在报名${activity.ac_name }活动，请核对个人信息！','${ctx }/student/preEnroll?ac_id=${activity.ac_id }&s_id=${stu.s_id}','','510')">报名</a>  <br/>
						</li>	
						</c:if>
					<c:if test="${activity.enroll==1 }">
						<li>       
						<a class="signup" href="javascript:;">已报名</a>  <br/>
						</li>
						</c:if>
						<li>           <a class="signup" href="javascript:;" onclick="active_add('感谢您对双遗马拉松活动做出反馈！','${ctx}/jsp/user/feedback-user.jsp','','510')">反馈</a> 
						</li>


					</ul>
  
				</div>
				</c:forEach>
				</c:if> 	
			</div>
		</header><!-- end header -->

	</div>
	<script type="text/javascript" src="${ctx}/lib/jquery/1.9.1/jquery.min.js"></script>
	<script type="text/javascript" src="${ctx}/lib/layer/1.9.3/layer.js"></script>
	<script type="text/javascript" src="${ctx}/js/H-ui.js"></script>
	<script type="text/javascript" src="${ctx}/js/H-ui.admin.js"></script>
	<script type="text/javascript" src="${ctx}/js/new.js"></script>
	
	<script type="text/javascript">
		$.ajax({
			url:"${ctx}/student/get_stu_activity",
			type:"post",
			data:"s_id=15745132451",
			dataType : "json",
			success:function(result){
				alert("111");
				alert(eval(result).activities[0]);
				$("#fdw-pricing-table").html(result);
			},
			error:function(){
				alert("error");
			}
		});
	</script>
	<script type="text/javascript" >

	function tosubmit(){
		 document.actionForm.action = "${ctx }/student/detailInfo";   
         document.actionForm.submit();
	}
	</script>
</body>
</html>
