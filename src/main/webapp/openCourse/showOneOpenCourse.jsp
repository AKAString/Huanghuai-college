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
	<jstl:if test="${planCourse.isplaned eq yes }">
		<div  class="alert alert-success">
			<a href="#" class="close" >&times;</a>
			<strong>该课程已开课!!!</strong>
		</div>
	</jstl:if>

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
				<!-- <td> 理论学时</td>
				<td> 实验或上机学时</td> -->
				<td> 实践学时</td>
				
				<!-- 5 -->
				<td> 总学时</td>
				<td>所属学院</td>
			</tr>
			<tr>
			
				
				<!-- -1 -->
				<td>${planCourse.classInfo.grade}</td>
				<td>${planCourse.classInfo.major.college.college_name}</td>
				<td>${planCourse.classInfo.major.major_name}</td>

				<!-- 0 -->
				<td>${planCourse.classInfo.class_name}</td>
				<td>${planCourse.classInfo.pop_num}</td>
				
				<!-- 1 -->
				<td>${planCourse.course.course_class}</td>
				<td>${planCourse.course.courseInfo.courseinfo_num}</td>
				<td>${planCourse.course.courseInfo.courseinfo_name}</td>
				
				<!--2  -->
				<td>${planCourse.course.course_credit}</td>
				<fmt:formatNumber var="c" value="${planCourse.course.course_opensemester / 2}" pattern="#"/>
				<jstl:choose>
					<jstl:when test="${planCourse.course.course_opensemester % 2 == 1 && planCourse.course.course_opensemester % 2 <= 6}">
						<td>${c}</td>
					</jstl:when>
					<jstl:when test="${ planCourse.course.course_opensemester  == 1234}">
						<td>${12}</td>
					</jstl:when>
					<jstl:when test="${ planCourse.course.course_opensemester  == 123456}">
						<td>${123}</td>
					</jstl:when>
					<jstl:when test="${ planCourse.course.course_opensemester  == 12345678}">
						<td>${1234}</td>
					</jstl:when>
					<jstl:otherwise>
						<td>${c}</td>
					</jstl:otherwise>
				</jstl:choose>
				<td>${planCourse.course.course_opensemester}</td>
			
				
				<!--3  -->
				<fmt:formatNumber var="d" value="${planCourse.course.course_theoreticaltime / planCourse.course.course_weektime}" pattern="#"/>
				<td>${planCourse.course.course_exam}</td>
				<td>${planCourse.course.course_weektime}</td>
				<td>${d}</td>
				
				<!-- 4 -->
			<%-- 	<td>${planCourse.course.course_theoreticaltime}</td>
				<td>${planCourse.course.course_experimentaltime}</td> --%>
				<td>${planCourse.course.course_othertime}</td>
				
				<!-- 5 -->
				<td>${planCourse.course.course_alltime}</td>
				<td>${planCourse.course.college.college_name}</td>
			</tr>
</table>

	<form action="${pageContext.request.contextPath}/OpenCourseController/examinationOneCoursePlan.do" method="post">
		
		<!--2  -->
		<div class="form-group" style="margin-bottom: 30px">
		<input type="text" class="hidden" value="${planCourse.classId }" name="classId">
			<input type="text" class="hidden" value="${planCourse.courseId }" name="courseId">
			<table style="position: center;">
				<tr>
					<td style="font-weight: bold">教师名称:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
					<td><select name="teacher.teacher_id" class="form-control"
						style="width: 202px">
				<jstl:forEach items="${listTeacher }" var="teachers">
					<option value="${teachers.teacher_id }">${teachers.teacher_name }</option>
				</jstl:forEach>
			</select>
			</td>
			</tr>
			</table>
			
		</div>
		
		<!--3  -->
		<div class="form-group" style="margin-bottom: 30px">
			<table style="position: center;">
				<tr>
					<td style="font-weight: bold">开&nbsp;&nbsp;课&nbsp;&nbsp;周:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
					<td><select name="weekOfOpenCourse" class="form-control"
						style="width: 202px">
				<jstl:forEach items="${startWeek }" var="week">
					<option value="${week}">${week }</option>
				</jstl:forEach>
			</select>
			</td>
			</tr>
			</table>
		</div>
		
		
    
		<div class="form-group" style="margin-left: 10%">
			<input type="submit" value="生成开课任务" class="btn  btn-success"> <input
				type="reset" value="重置" class="btn  btn-warning">
		</div>
	</form>
			
</body>
</html>