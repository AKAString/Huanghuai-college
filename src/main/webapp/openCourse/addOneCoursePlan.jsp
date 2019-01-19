<%@page import="com.qst.infos.entity.ClassInfoEntity"%>
<%@page import="java.util.List"%>
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
<script type="text/javascript">
	$(function() {
		$("#queryClass")
				.click(
						function() {
							var params = $("#form1").serialize();
							$
									.ajax({
										url : "${pageContext.request.contextPath}/OpenCourseController/queryInfoOfClass.do",
										data : params,
										success : function(msg) {
											if (msg.length > 0) {

											} else {
												alert('无符合条件的班级')
											}
											$("#tb  tr:not(:first)").html("");
											for (i = 0; i < msg.length; i++) {

												var tr = "<tr><td>"
														+ msg[i].grade
														+ "</td><td>"
														+ msg[i].major.college.college_name
														+ "</td><td>"
														+ msg[i].major.major_name
														+ "</td><td>"
														+ msg[i].class_name
														+ '</td><td><input type="checkbox"  value="'+msg[i].class_id+'"  name="infoOfClassId" /></td></tr>';

												$("#tb").append(tr);
											}
										}
									});
						})
		/**
		 *选择课程
		 */
		$("#openPlan")
				.click(
						function() {
							var params = $("#form2").serialize();
							$
									.ajax({
										url : "${pageContext.request.contextPath}/OpenCourseController/querySomeCourse.do",
										data : params,
										success : function(msg) {

											if (msg.length > 0) {
												
											} else {
												alert('无符合条件的课程');
											}
											$("#tb2  tr:not(:first)").html("");
											for (i = 0; i < msg.length; i++) {

												var tr2 = "<tr><td>"
														+ msg[i].course_class
														+ "</td><td>"
														+ msg[i].courseInfo.courseinfo_num
														+ "</td><td>"
														+ msg[i].courseInfo.courseinfo_name
														+ "</td><td>"
														+ msg[i].course_credit
														+ "</td><td>"
														+ msg[i].course_opensemester
														+ "</td><td>"
														+ msg[i].course_exam
														+ "</td><td>"
														+ msg[i].course_weektime
														+ "</td><td>"
														+ msg[i].course_alltime
																/ msg[i].course_weektime
														+ "</td><td>"
														
														+ msg[i].course_othertime
														+ "</td><td>"
														+ msg[i].course_alltime
														+ "</td><td>"
														+ msg[i].college.college_name
														+ '</td><td><input type="checkbox"  value="'+msg[i].coures_id+'"  name="courseIds" /></td></tr>';
												$("#tb2").append(tr2);
											}
											
											
											
										}
									});
						})

		/* 
		 */
		//提交开课计划
		$("#open2")
				.click(
						function() {
							var infoOfClassId = new Array();
							var courseInfoId = new Array();
							$("input:checkbox[name='courseIds']:checked").each(
									function() {
										courseInfoId.push($(this).val());
									});

							$("input:checkbox[name='infoOfClassId']:checked")
									.each(function() {
										infoOfClassId.push($(this).val());
									});
							var temp = {
								"item" : infoOfClassId,
								"item2" : courseInfoId
							};
							alert('成功生成开课计划')
							
							var params = $("#form1").serialize();
							$
									.ajax({
										url : "${pageContext.request.contextPath}/OpenCourseController/addOneCoursePlan.do",
										data : temp,
										success : function(msg) {
											window.location.href = "${pageContext.request.contextPath}/openCourse/addOneCoursePlan.jsp";
										}
									});
						})

	})
</script>
<style type="text/css">
#allInsure {
	position: fixed;
	top: 80%;
	left: 80%;
}
</style>
</head>
<body>
	<div class="form-group" style="margin-top: -40px">
		<h3>
			<label>添加开课计划</label>
		</h3>
	</div>
	<form id="form1" method="post">
		<!-- 1 -->

		<div class="form-group" style="margin-bottom: 30px">
			<table style="position: center;">
				<tr>
					<td style="font-weight: bold">年&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;级:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
					<td><select name="grade" class="form-control"
						style="width: 202px">
							<option>请选择年级</option>
							<jstl:forEach items="${listGrade }" var="grad">
								<option value="${grad}">${grad}</option>
							</jstl:forEach>

					</select></td>
				</tr>
			</table>
		</div>

		<!--2  -->
		<div class="form-group" style="margin-bottom: 30px">
			<table style="position: center;">
				<tr>
					<td style="font-weight: bold">专&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;业:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
					<td><select id="courseInfos" name="major.major_id"
						class="form-control " style="width: 202px">
							<option>请选择专业</option>
							<jstl:forEach items="${listMajor }" var="maj">
								<option id="${maj.college.college_name }"
									value="${maj.major_id }">${maj.major_name }</option>
							</jstl:forEach>

					</select></td>
				</tr>
			</table>

		</div>

		<!-- 3 -->
		<!-- <div class="form-group col-md-1">
			<label class="">院系名称</label>
		</div>

		<div class="form-group col-md-2">
			<input disabled="disabled" type="text" id="courseCollege"
				class="form-control " name="courseinfo_name">
		</div> -->


		<div class="form-group col-md-3">
			<input type="button" value="查询" id="queryClass"
				class="btn  btn-warning">

		</div>
	</form>


	<table class="table " id="tb" border="1">
		<tr>
		<td>年级</td>
			<td>院系名称</td>
			<td>专业名称</td>
			
			<td>班级</td>
			<td>操作</td>
		</tr>
		<!-- <tr>
			<td colspan="5">&nbsp;</td>
		</tr>
		<tr>
			<td colspan="5">&nbsp;</td>
		</tr>
		<tr>
			<td colspan="5">&nbsp;</td>
		</tr>
		<tr>
			<td colspan="5">&nbsp;</td>
		</tr> -->

	</table>


	<form id="form2" method="post">
	<!--2  -->
		<div class="form-group" style="margin-bottom: 30px">
			<table style="position: center;">
				<tr>
					<td style="font-weight: bold">课程类别:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
					<td><select name="course_class" class="form-control"
						style="width: 202px">
				<option>请选择类别</option>
				<option value="必修">必修</option>
				<option value="选修">选修</option>
			</select>
			</td>
			</tr>
			</table>

		</div>

		
		
		
		<div class="form-group" style="margin-bottom: 30px">
			<table style="position: center;">
				<tr>
					<td style="font-weight: bold">开课学期:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
					<td><select name="course_opensemester" class="form-control"
						style="width: 202px">
				<option>请选择开课学期</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				<option value="4">4</option>
				<option value="5">5</option>
				<option value="6">6</option>

			</select>
			</td>
			</tr>
			</table>
		</div>

<div class="form-group col-md-4">
			<input type="button" value="查询" id="openPlan" class="btn  btn-warning">
		</div>
		
	</form>
	<table class="table " id="tb2" border="1" >
		<tr>
			<!-- 1 -->
			<td>课程类别</td>
			<td>课程编码</td>
			<td>课程名称</td>

			<!--2  -->
			<td>学分</td>
			<td>开课学期</td>

			<!--3  -->
			<td>考试类别</td>
			<td>理论周学时</td>
			<td>上课周数</td>

			<!-- 4 -->
			
			<td>实践学时</td>

			<!-- 5 -->
			<td>总学时</td>
			<td>课程开出系</td>
			<td>操作</td>
		</tr>
		<!-- <tr>
			<td colspan="14">&nbsp;</td>
		</tr>
		<tr>
			<td colspan="14">&nbsp;</td>
		</tr>
		<tr>
			<td colspan="14">&nbsp;</td>
		</tr>
		<tr>
			<td colspan="14">&nbsp;</td>
		</tr>
		<tr>
			<td colspan="14">&nbsp;</td>
		</tr>
		<tr>
			<td colspan="14">&nbsp;</td>
		</tr> -->

	</table>
	<div class="form-group col-md-4">
			<input type="button" value="生成开课计划" id="open2" class="btn  btn-success">
		</div>






	<script type="text/javascript">
		$("#courseInfos").change(function() {
			var uu = $(this).children('option:selected').attr("id");
			$("#courseCollege").attr("value", uu)
		})
	</script>
</body>
</html>