<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="jstl"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
	<div class="form-group" style="margin-top: -40px">
		<h3>
			<label>教学计划查询</label>
		</h3>
	</div>
	<table class="table table-striped" id="tb" border="1" style="width: 120%">
		<tr>
			<!-- 1 -->
			<td>课程类别</td>
			<td>课程编码</td>
			<td>课程名称</td>

			<!--2  -->
			<td>学分</td>
			<td>开课学年</td>
			<td>开课学期</td>

			<!--3  -->
			<td>考试类别</td>
			<td>理论周学时</td>
			<td>上课周数</td>

			<!-- 4 -->
			<!-- <td>理论学时</td>
			<td style="width: 50px">实验或上机学时</td> -->
			<td>实践学时</td>

			<!-- 5 -->
			<td>总学时</td>
			<td>课程开出系</td>
			<td style="width: 150px">操作</td>
			
		</tr>
		<jstl:forEach items="${listCourse}" var="cou">
			<tr>
				<!-- 1 -->
				<td>${cou.course_class}</td>
				<td>${cou.courseInfo.courseinfo_num}</td>
				<td>${cou.courseInfo.courseinfo_name}</td>

				<!--2  -->
				<td>${cou.course_credit}</td>
				<fmt:formatNumber var="c" value="${cou.course_opensemester / 2}"
					pattern="#" />
				<jstl:choose>
					<jstl:when
						test="${cou.course_opensemester % 2 == 1 && cou.course_opensemester % 2 <= 6}">
						<td>${c}</td>
					</jstl:when>
					<jstl:when test="${ cou.course_opensemester  == 1234}">
						<td>${12}</td>
					</jstl:when>
					<jstl:when test="${ cou.course_opensemester  == 123456}">
						<td>${123}</td>
					</jstl:when>
					<jstl:when test="${ cou.course_opensemester  == 12345678}">
						<td>${1234}</td>
					</jstl:when>
					<jstl:otherwise>
						<td>${c}</td>
					</jstl:otherwise>
				</jstl:choose>
				<td>${cou.course_opensemester}</td>


				<!--3  -->
				<fmt:formatNumber var="d"
					value="${cou.course_theoreticaltime / cou.course_weektime}"
					pattern="#" />
				<td>${cou.course_exam}</td>
				<td>${cou.course_weektime}</td>
				<td>${d}</td>

				<!-- 4 -->
				<%-- <td>${cou.course_theoreticaltime}</td>
				<td>${cou.course_experimentaltime}</td> --%>
				<td>${cou.course_othertime}</td>

				<!-- 5 -->
				<td>${cou.course_alltime}</td>
				<td>${cou.college.college_name}</td>

				<td><a
					href="${pageContext.request.contextPath}/CourseController/queryOneCourseById.do?coures_id=${cou.coures_id}" class="btn btn-primary">修改</a>
					<a
					href="${pageContext.request.contextPath}/CourseController/deleteOneCourseById.do?coures_id=${cou.coures_id}" class="btn btn-danger">删除</a>
				</td>
			</tr>
		</jstl:forEach>

	</table>

</body>
</html>