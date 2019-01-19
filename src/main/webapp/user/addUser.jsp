<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
		<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
		<script src="${pageContext.request.contextPath}/js/bootstrapValidator.min.js" type="application/javascript"></script>
		<link href="${pageContext.request.contextPath}/css/dashboard.css" rel="stylesheet" type="text/css">
		<link href="${pageContext.request.contextPath}/css/bootstrapValidator.min.css" rel="stylesheet" type="text/css"/>		
	
</head>
<body>
<form action="${pageContext.request.contextPath}/UserConstroller/addOneUser.do" method="post">
		<div class="form-group "  >
			<input type="text" class="form-control" name="userName" placeholder="请输入用户名" > 
		</div>
		
		<div class="form-group "  >
			<input type="text" name="userPwd" class="form-control" placeholder="请输入用户密码" >
		</div>
		<div class="form-group "  >
			<input type="submit"  value="提交" class="form-control" >
		</div>
	
	</form>

</body>
</html>