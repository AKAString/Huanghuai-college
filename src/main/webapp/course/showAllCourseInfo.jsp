<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="jstl"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
		<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
		<script src="${pageContext.request.contextPath}/js/bootstrapValidator.min.js" type="application/javascript"></script>
		<link href="${pageContext.request.contextPath}/css/dashboard.css" rel="stylesheet" type="text/css">
		<link href="${pageContext.request.contextPath}/css/bootstrapValidator.min.css" rel="stylesheet" type="text/css"/>		
		
</head>
<body>
<div class="form-group"  style="margin-top: -40px">
			<h3><label >课程查询</label></h3>
		</div>
<table class="table table-striped" border="1.5" id="tb">
		<tr> 
				<td> 课程编码</td>
				<td> 课程名称</td>
				<td> 操作</td>
			</tr>
		 <jstl:forEach  items="${listCourseInfo}" var="ci">
			<tr>
				<td>${ci.courseinfo_num}</td>
				<td>${ci.courseinfo_name}</td>
				<td><a href="${pageContext.request.contextPath}/CourseInfoController/queryOneCourseInfoById.do?courseinfo_id=${ci.courseinfo_id}" class="btn btn-primary">修改</a>
				<a href="${pageContext.request.contextPath}/CourseInfoController/deleteOneCourseInfoById.do?courseinfo_id=${ci.courseinfo_id}" class="btn btn-danger">删除</a>
				</td>
			</tr>
		</jstl:forEach> 

</table>
			
</body>
</html>