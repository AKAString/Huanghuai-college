<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="jstl"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
		if (form1.courseinfo_num.value == " ") {
			alert("课程编号不能为空!");
			return false;
		}
		if (form1.courseinfo_name.value == " ") {
			alert("课程名称不能为空!");
			return false;
		}
	}
</script>

	<form
		action="${pageContext.request.contextPath}/CourseInfoController/addOneCourseInfo.do"
		method="post" name="form1" onsubmit="return check()"
		style="margin-top: -40px">

		<!-- 1 -->
		<div class="form-group" style="margin-top: -40px">
			<h3>
				<label>课程添加</label>
			</h3>
		</div>
		<div class="form-gruop" style="margin-bottom: 30px">
		<table  style="position: center;">
		<tr>

			<td style="font-weight: bold">课程编号:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td><input type="text" class="form-control" name="courseinfo_num" placeholder="请输入课程编号" required></td>
			</tr>
			</table>
		</div>



		<!--2  -->
		<div class="form-gruop" style="margin-bottom: 30px">
		<table  style="position: center;">
		<tr>

			<td style="font-weight: bold">课程名称:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td><input type="text" class="form-control" name="courseinfo_name" placeholder="请输入课程名称" required></td>
			</tr>
			</table>
		</div>



		<div class="form-group" style="margin-left: 10%">
			<input type="submit" value="添加" class="btn  btn-success"> <input
				type="reset" value="重置" class="btn  btn-warning">
		</div>
	</form>

</body>
</html>