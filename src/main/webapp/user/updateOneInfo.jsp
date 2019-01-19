<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insert title here</title>
		<script type="text/javascript" src="/meetingApp/js/jquery.min.js"></script>
		<script type="text/javascript" src="/meetingApp/js/bootstrap.min.js"></script>
		<link href="/meetingApp/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
		<script src="/meetingApp/js/bootstrapValidator.min.js" type="application/javascript"></script>
		<link href="/meetingApp/css/dashboard.css" rel="stylesheet" type="text/css">
		<link href="/meetingApp/css/bootstrapValidator.min.css" rel="stylesheet" type="text/css"/>		
		
</head>
<body>
	<form action="/meetingApp/user/updateOne.do" method="post">
		<div class="form-group "  >
		<h3>用户修改</h3>
		<input type="text" class="form-control hidden" name="userId" value="${userReturn1.userId}" > 
			<input type="text" class="form-control" name="userName" value="${userReturn1.userName}" > 
		</div>
		
		<div class="form-group "  >
			<input type="text" name="userPwd" class="form-control" value="${userReturn1.userPwd}" >
		</div>
		<div class="form-group "  >
			<input type="submit"  value="提交" class="form-control" >
		</div>
	
	</form>

</body>
</html>