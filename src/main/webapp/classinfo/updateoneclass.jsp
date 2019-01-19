<%@page import="com.qst.infos.entity.ClassInfoEntity"%>
<%@page import="com.qst.infos.entity.MajorEntity"%>
<%@page import="com.qst.infos.entity.CollegeEntity"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="jstl" %> 	
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
		if (form1.class_name.value == " ") {
			alert("班级名称不能为空!");
			return false;
		}
	}
	</script>
	<%
		List<MajorEntity> list = (List<MajorEntity>) request.getAttribute("majorList");
		ClassInfoEntity classinfo = (ClassInfoEntity) request.getAttribute("classinfo");
	
	%>
	<form
		action="${pageContext.request.contextPath}/ClassInfoController/updateOneClassById.do"
		method="post" name="form1" onsubmit="return check()"
		style="margin-top: -40px">
		<div class="form-group">
			<h3>
				<label>班级信息修改</label>
			</h3>
		</div>
		<!-- 1 -->
		<input type="hidden" name="class_id" value="<%=classinfo.getClass_id()%>">
		<div class="form-group" style="margin-bottom: 30px">
		<table  style="position: center;">
		<tr>
			<td style="font-weight: bold">年&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;级:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td><input type="text" class="form-control" name="grade" value="<%=classinfo.getGrade()%>" required ></td>
			</tr>
			</table>
			</div>
		<div class="form-group" style="margin-bottom: 30px">
			<table  style="position: center;">
		<tr>
			<td style="font-weight: bold">班级名称:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td><input type="text" class="form-control"name="class_name" value="<%=classinfo.getClass_name()%>" required ></td>
			</tr>
			</table>
			</div>
			
		<div class="form-group" style="margin-bottom: 30px">
			<table  style="position: center;">
		<tr>
			<td style="font-weight: bold">班级人数:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td><input type="text" class="form-control" name="pop_num" value="<%=classinfo.getPop_num()%>" required ></td>
			</tr>
			</table>
		</div>
		
		<div class="form-gruop" style="margin-bottom: 30px">
		<table  style="position: center;">
		<tr>
			<td style="font-weight: bold">学院名称:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td> <select
				name="major.major_id" class="form-control" style="width: 200px">
						 <%
							for (MajorEntity m : list) {
								if (m.getMajor_id() == classinfo.getMajor().getMajor_id()) {
						%>
						<option selected="selected" value="<%=m.getMajor_id()%>"><%=m.getMajor_name()%>
						</option>
						<%
							} else {
						%>
						<option value="<%=m.getMajor_id()%>"><%=m.getMajor_name()%>
						</option>
						<%
							}
							}
						%> 
			</select>
			</td>
			</tr>
			</table>
		</div>
		
		<%-- <!-- 学院 -->
		<div class="form-group">
			<label>学院名称</label>
			<input class="form-control" type="text"  value="<%= classinfo.getMajor().getCollege().getCollege_name()%>">
		</div> --%>


		<div class="form-group" style="margin-left: 20%">
		<input type="submit" value="修改" class="btn  btn-success"> <input
				type="reset" value="重置" class="btn  btn-warning">
		</div>
	</form>

</body>
</html>