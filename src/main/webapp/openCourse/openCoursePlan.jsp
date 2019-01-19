<%@page import="com.qst.infos.entity.ClassInfoEntity"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="jstl"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
	<table class="table " border="1px" >
			<tr>
				<td colspan="2">学院:&nbsp;&nbsp;${planCourse.classInfo.major.college.college_name }</td>
				<td>专业:&nbsp;&nbsp;${planCourse.classInfo.major.major_name }</td>
				
			</tr>
			<tr>
				<td>年级:&nbsp;&nbsp;${planCourse.classInfo.grade }</td>
				<td >班级:&nbsp;&nbsp;${planCourse.classInfo.class_name }</td>
				<td >人数:&nbsp;&nbsp;${planCourse.classInfo.pop_num }</td>
			</tr>
			<tr>
				<td colspan="2">所选课程:&nbsp;&nbsp;${planCourse.course.courseInfo.courseinfo_name }</td>
				<td >开课学院:&nbsp;&nbsp;${planCourse.course.college.college_name }</td>
				
			</tr>
			<tr>
				<td colspan="2">课程类别:&nbsp;&nbsp;${planCourse.course.course_class }</td>
				<td >学分:&nbsp;&nbsp;${planCourse.course.course_credit }</td>
				
				
			</tr>
			<tr>
				
				<td colspan="2">课程名称:&nbsp;&nbsp;${planCourse.course.courseInfo.courseinfo_name}</td>
				<td >课程编码:&nbsp;&nbsp;${planCourse.course.courseInfo.courseinfo_num}</td>
			</tr>
			<tr>
			<fmt:formatNumber var="c" value="${planCourse.course.course_opensemester / 2}" pattern="#"/>
				<jstl:choose>
					<jstl:when test="${planCourse.course.course_opensemester % 2 == 1 && planCourse.course.course_opensemester % 2 <= 6}">
						<td>开课学年:&nbsp;&nbsp;${c}</td>
					</jstl:when>
					<jstl:when test="${ planCourse.course.course_opensemester  == 1234}">
						<td>开课学年:&nbsp;&nbsp;${12}</td>
					</jstl:when>
					<jstl:when test="${ planCourse.course.course_opensemester  == 123456}">
						<td>开课学年:&nbsp;&nbsp;${123}</td>
					</jstl:when>
					<jstl:when test="${ plan.course.course_opensemester  == 12345678}">
						<td>开课学年:&nbsp;&nbsp;${1234}</td>
					</jstl:when>
					<jstl:otherwise>
						<td>开课学年:&nbsp;&nbsp;${c}</td>
					</jstl:otherwise>
				</jstl:choose>
				<td >开课学期:&nbsp;&nbsp;${planCourse.course.course_opensemester}</td>
				<td >考试类别:&nbsp;&nbsp;${planCourse.course.course_exam}</td>
				
			</tr>
			<tr>
				<td colspan="2">总学时:&nbsp;&nbsp;${planCourse.course.course_alltime}</td>
				<td>理论学时:&nbsp;&nbsp;${planCourse.course.course_theoreticaltime}</td>
				
			</tr>
			
			<tr>
			<fmt:formatNumber var="d" value="${planCourse.course.course_theoreticaltime / planCourse.course.course_weektime}" pattern="#"/>
				<td colspan="2">理论上课周数:&nbsp;&nbsp;${d}</td>
				<td >周学时:&nbsp;&nbsp;${planCourse.course.course_weektime}</td>
			</tr>
			
			<tr>
				<td>实验或上机学时:&nbsp;&nbsp;${planCourse.course.course_experimentaltime}</td>
				<td >实践学时:&nbsp;&nbsp;${planCourse.course.course_othertime}</td>
				<td >课程开始周数:&nbsp;&nbsp;${planCourse.weekOfOpenCourse}</td>
				
			</tr>
			<tr>
				
				<td colspan="2">教师姓名:&nbsp;&nbsp;${planCourse.teacher.teacher_name}</td>
				<td>教师工号:&nbsp;&nbsp;${planCourse.teacher.teacher_num}</td>
			</tr>
			<tr>
				<td colspan="2">教师所在学院:&nbsp;&nbsp;${planCourse.teacher.college.college_name}</td>
				<td>教师性别:&nbsp;&nbsp;${planCourse.teacher.teacher_sex}</td>
			</tr>
			
			<tr>
				<td rowspan="4" >
					审核意见
				</td>
				<td rowspan="4" >
					审核盖章：
				</td>
				
			</tr>
			
			<tr>
				<td colspan="3">
					审核部门：  
				</td>
			</tr>
			<tr>
				<td colspan="3">
					审核日期:
				</td>
			</tr>
			<tr>
				<td colspan="3">
					审核人:  
				</td>
				
			</tr>
		</table>
</body>
</html>