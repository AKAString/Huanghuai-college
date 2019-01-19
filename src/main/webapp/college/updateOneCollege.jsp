<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
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
			if (form1.college_name.value == " ") {
				alert("院系名称不能为空!");
				return false;
			}
		}
	</script>
	<!-- <div class="form-group" style="margin-top: -40px">
		<h5>
			<label>院系信息</label>
		</h5>
	</div> -->
	<%-- <table class="table table-striped" id="tb">
		<tr>
			<td>
				院系编号&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${coll.college_id}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				院系名称&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${coll.college_name}</td>
	</table> --%>
	<form
		action="${pageContext.request.contextPath}/CollegeController/updateOneCollege.do"
		method="post" name="form1" onsubmit="return check()" style="margin-top: -40px">
		<!-- 1 -->
		<div class="form-group" >
			<h3>
				<label>院系修改</label>
			</h3>
		</div>
		<div class="form-group" style="width: 50%; left: 20%;" align="center">
			<label for=""></label> <input type="text" class="form-control hidden"
				value="${coll.college_id}" name="college_id"> <input
				type="text" class="form-control" name="college_name"
				placeholder="请输入院系名称"  required>
		</div>

		<div class="form-group" style="margin-left: 20%">
			<input type="submit" value="修改" class="btn  btn-success"> <input
				type="reset" value="重置" class="btn  btn-warning">
		</div>
	</form>

</body>
</html>