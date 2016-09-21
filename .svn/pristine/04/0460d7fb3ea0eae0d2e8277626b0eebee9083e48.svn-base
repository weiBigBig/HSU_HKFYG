<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form id="loginform" method="post">
		<table>
			<tr>
				<td>用户名:</td>
				<td><input type="text" name="loginname" /></td>
			</tr>
			<tr>
				<td>密&nbsp;&nbsp;码:</td>
				<td><input type="passWord" name="password" /></td>
			</tr>
			<tr>
				<td>验证码：</td>
				<td><input type="text" name="code"></td>
				<td><img id="codeImg" alt="验证码" src="${ctx}/admin/code"
					onclick="changeImg()" /></td>
			</tr>
		</table>
	</form>
</body>
<script type="text/javascript">
function changeImg() {
    var imgSrc = $("#codeImg");
    var src = imgSrc.attr("src");
    imgSrc.attr("src", chgUrl(src));
}
function chgUrl(url) {
    var timestamp = (new Date()).valueOf();if ((url.indexOf("&") >= 0)) {
        url = url + "&timestamp=" + timestamp;
    } else {
        url = url + "?timestamp=" + timestamp;
    }
    return url;
}

</script>
</html>