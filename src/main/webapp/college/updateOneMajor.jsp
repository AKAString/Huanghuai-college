<%@page import="com.qst.infos.entity.MajorEntity"%>
<%@page import="com.qst.infos.entity.CollegeEntity"%>
<%@page import="java.util.List"%>
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
			if (form1.major_name.value == " ") {
				alert("专业名称不能为空!");
				return false;
			}
		}
	</script>
	<%-- <div class="form-group" style="margin-top: -40px">
		<h5>
			<label style="width: 20%">专业信息</label>
		</h5>
	</div>
	<table class="table table-striped" id="tb" style="margin-bottom: 50px">
		<tr>
			<td>专业编号&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${major.major_id}</td>
	</table> --%>
	<%
		List<CollegeEntity> list = (List<CollegeEntity>) request.getAttribute("CollegeList");
		MajorEntity major = (MajorEntity) request.getAttribute("major");
	%>
	<form
		action="${pageContext.request.contextPath}/MajorController/updateOneMajor.do"
		method="post" name="form1" onsubmit="return check()"
		style="margin-top: -40px">
		<div class="form-group">
			<h3>
				<label>专业信息修改</label>
			</h3>
		</div>
		<!-- 1 -->
		<input type="hidden" name="major_id" value="<%=major.getMajor_id()%>">

		<div class="form-gruop" style="margin-bottom: 30px">
			<table style="position: center;">
				<tr>
					<td style="font-weight: bold">专业名称:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
					<td><input type="text" class="form-control" name="major_name"
						value="<%=major.getMajor_name()%>" required></td>
				</tr>
			</table>
		</div>

		<div class="form-gruop" style="margin-bottom: 30px">
			<table style="position: center;">
				<tr>
					<td style="font-weight: bold">学院名称:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
					<td><select name="college.college_id" class="form-control"
						style="width: 200px">
							<%
								for (CollegeEntity c : list) {
									if (c.getCollege_id() == major.getCollege().getCollege_id()) {
							%>
							<option selected="selected" value="<%=c.getCollege_id()%>"><%=c.getCollege_name()%>
							</option>
							<%
								} else {
							%>
							<option value="<%=c.getCollege_id()%>"><%=c.getCollege_name()%>
							</option>
							<%
								}
								}
							%>
					</select></td>
				</tr>
			</table>
		</div>

		<div class="form-group" style="margin-left: 10%">
			<input type="submit" value="修改" class="btn  btn-success"> <input
				type="reset" value="重置" class="btn  btn-warning">
		</div>
	</form>

</body>
</html>