<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="jstl"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
		<script type="text/javascript" src="/meetingApp/js/jquery.min.js"></script>
		<script type="text/javascript" src="/meetingApp/js/bootstrap.min.js"></script>
		<link href="/meetingApp/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
		<script src="/meetingApp/js/bootstrapValidator.min.js" type="application/javascript"></script>
		<link href="/meetingApp/css/dashboard.css" rel="stylesheet" type="text/css">
		<link href="/meetingApp/css/bootstrapValidator.min.css" rel="stylesheet" type="text/css"/>		
		
</head>
<body>
<table class="table table-striped" id="tb">
		<tr> 
				<td> 用户ID</td>
				<td> 用户名</td>
				<td> 用户密码</td>
				<td> 删除操作</td>
				<td> 修改操作</td>
			</tr>
		 <jstl:forEach  items="${listUser}" var="item">
			<tr>
				<td>${item.userId}</td>
				<td>${item.userName}</td>
				<td>${item.userPwd}</td>
				<td><a href="${pageContext.request.contextPath}/user/deleteOneUserById.do?userId=${item.userId}">删除</a></td>
				<td><a href="${pageContext.request.contextPath}/user/queryOneUserById.do?userId=${item.userId}">修改</a></td>
			</tr>
		</jstl:forEach> 

</table>
			
</body>
</html>