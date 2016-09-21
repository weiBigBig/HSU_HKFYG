<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>欢迎</title>
<script src="http://libs.baidu.com/jquery/1.9.0/jquery.js"
	type="text/javascript"></script>
<script type="text/javascript">
function reloadcode(){
	document.getElementById("codeImg").src="${ctx}/piccode/createpic?"+  new Date().getTime();
	}
function validateuserName(){	
	var userName=document.getElementById("username").value;	
	$.ajax({
		type:"POST",
		url:"${ctx}/usernamevalidate",
		data:{name:userName},
		success:function(data){
			if(data=="true"){
				alert("用户名可用");
			}else{
				alert("用户名已存在");
			}
		}
	});
}
function exportexcle(){
	location.href="excel/export/entryForm";
	<!--这里不能用ajax请求,ajax请求无法弹出下载保存对话框-->
}
</script>
</head>
<body>
	<h2>Hello World!</h2>

	<form action="login">
		用户名：<input id="username" name="username" type="text"
			onblur="validateuserName()"></input><br> 密&nbsp;&nbsp;码：<input
			id="username" name="password" type="password"></input><br> 验证码：
		<input type="text" name="code"> <img id="codeImg" alt="验证码"
			src="${ctx}/piccode/createpic" onclick="reloadcode()" /> <input
			type="button" value="下载excle文档" onclick="exportexcle()"> 
			<input type="submit" value="提交">
	</form>
</body>
</html>
