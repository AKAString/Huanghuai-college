<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="jstl"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
<table class="table " border="1" id="tb">
		<tr> 
				
				<!-- -1 -->
				<td>年级</td>
				<td>院系</td>
				<td>专业</td>

				<!-- 0 -->
				<td>班级</td>
				<td>人数</td>
		
		
				<!-- 1 -->
				<td> 课程类别</td>
				<td> 课程编码</td>
				<td> 课程名称</td>
				
				<!--2  -->
				<td> 学分</td>
				<td> 开课学年</td>
				<td> 开课学期</td>
				
				<!--3  -->
				<td> 考试类别</td>
				<td> 理论周学时</td>
				<td> 上课周数</td>
				
				<!-- 4 -->
				<td> 理论学时</td>
				<td> 实验或上机学时</td>
				<td> 实践学时</td>
				
				<!-- 5 -->
				<td> 总学时</td>
				<td> 课程开出系</td>
				<td> 教师名</td>
				<td> 开课周</td>
				
				<td> 操作</td>
				<!-- <td> 详情</td> -->
			</tr>
		 <jstl:forEach  items="${listFinishCourse}" var="plan">
			<tr>
			
				
				<!-- -1 -->
				<td>${plan.classInfo.grade}</td>
				<td>${plan.classInfo.major.college.college_name}</td>
				<td>${plan.classInfo.major.major_name}</td>

				<!-- 0 -->
				<td>${plan.classInfo.class_name}</td>
				<td>${plan.classInfo.pop_num}</td>
				
				<!-- 1 -->
				<td>${plan.course.course_class}</td>
				<td>${plan.course.courseInfo.courseinfo_num}</td>
				<td>${plan.course.courseInfo.courseinfo_name}</td>
				
				<!--2  -->
				<td>${plan.course.course_credit}</td>
				<fmt:formatNumber var="c" value="${plan.course.course_opensemester / 2}" pattern="#"/>
				<jstl:choose>
					<jstl:when test="${plan.course.course_opensemester % 2 == 1 && plan.course.course_opensemester % 2 <= 6}">
						<td>${c}</td>
					</jstl:when>
					<jstl:when test="${ plan.course.course_opensemester  == 1234}">
						<td>${12}</td>
					</jstl:when>
					<jstl:when test="${ plan.course.course_opensemester  == 123456}">
						<td>${123}</td>
					</jstl:when>
					<jstl:when test="${ plan.course.course_opensemester  == 12345678}">
						<td>${1234}</td>
					</jstl:when>
					<jstl:otherwise>
						<td>${c}</td>
					</jstl:otherwise>
				</jstl:choose>
				<td>${plan.course.course_opensemester}</td>
			
				
				<!--3  -->
				<fmt:formatNumber var="d" value="${plan.course.course_theoreticaltime / plan.course.course_weektime}" pattern="#"/>
				<td>${plan.course.course_exam}</td>
				<td>${plan.course.course_weektime}</td>
				<td>${d}</td>
				
				<!-- 4 -->
				<td>${plan.course.course_theoreticaltime}</td>
				<td>${plan.course.course_experimentaltime}</td>
				<td>${plan.course.course_othertime}</td>
				
				<!-- 5 -->
				<td>${plan.course.course_alltime}</td>
				<td>${plan.course.college.college_name}</td>
				<td>${plan.teacher.teacher_name }</td>
				<td> ${plan.weekOfOpenCourse }</td>
			   
				<td><a href="${pageContext.request.contextPath}/OpenCourseController/deleteOnePlanCourseById.do?courseId=${plan.courseId}&&classId=${plan.classId}&&isplaned=${plan.isplaned}" class="btn  btn-danger">删除</a></td>
				<%-- <td><a href="${pageContext.request.contextPath}/OpenCourseController/queryOneFinishedCoursePlan.do?courseId=${plan.courseId}&&classId=${plan.classId}&&isplaned=${plan.isplaned}&&teacherId=${plan.teacherId}&&weekOfOpenCourse=${plan.weekOfOpenCourse}">详情</a></td> --%>
			</tr>
		</jstl:forEach> 

</table>
			
</body>
</html>