<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>信息管理系统</title>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<link href="${pageContext.request.contextPath}/css/bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<script
	src="${pageContext.request.contextPath}/js/bootstrapValidator.min.js"
	type="application/javascript"></script>
<link href="${pageContext.request.contextPath}/css/dashboard.css"
	rel="stylesheet" type="text/css">
<link
	href="${pageContext.request.contextPath}/css/bootstrapValidator.min.css"
	rel="stylesheet" type="text/css" />

</head>
<body>
<script type="text/javascript">
	function check() {
		if (form1.college_name.value == " ") {
			alert("院系名称不能为空!");
			return false;
		}
	}
</script>
	<form
		action="${pageContext.request.contextPath}/CollegeController/addOneCollege.do"
		method="post" name="form1" onsubmit="return check()" style="margin-top: -40px">
		<!-- 1 -->
		<div class="form-group">
			<h3>
				<label >院系添加</label>
			</h3>
		</div>
		<div class="form-gruop" style="margin-bottom: 30px">
		<table  style="position: center;">
		<tr>
			<td style="font-weight: bold">院系名称:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td><input type="text" class="form-control" name="college_name" required></td>
			</tr>
			</table>
		</div>
		<div class="form-group" style="margin-left: 10%">
			<input type="submit" value="添加" class="btn  btn-success"> 
			<input type="reset" value="重置" class="btn  btn-warning">
		</div>
	</form>

</body>
</html>