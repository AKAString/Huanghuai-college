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
			<h3><label >教师查询</label></h3>
		</div>
<table class="table table-striped" id="tb" border="1">
		<tr> 
				<td> 教师名称</td>
				<td> 教师工号</td>
				<td> 教师所在学院</td>
				
				<td> 教师出生年月</td>
				<td> 教师性别</td>
				<td> 教师入校时间</td>
				
				<td> 教师学历</td>
				<td> 教师工作状态</td>
				
				<td> 操作</td>
				
			</tr>
		 <jstl:forEach  items="${listTeacher}" var="tea">
			<tr>
				<td>${tea.teacher_name }</td>
				<td>${tea.teacher_num }</td>
				<td>${tea.college.college_name }</td>
				
				<td>${tea.teacher_birthdate } </td>
				<td>${tea.teacher_sex } </td>
				<td>${tea.teacher_intime } </td>
				
				<td>${tea.teacher_education } </td>
				<td>${tea.teacher_state } </td>
				<td><a href="${pageContext.request.contextPath}/TeacherController/queryOneUserById.do?teacher_id=${tea.teacher_id}" class="btn btn-primary">修改</a>
				<a href="${pageContext.request.contextPath}/TeacherController/deleteOneCoolegeById.do?teacher_id=${tea.teacher_id}" class="btn btn-danger">删除</a>
			</td>
			</tr>
		</jstl:forEach> 

</table>
			
</body>
</html>