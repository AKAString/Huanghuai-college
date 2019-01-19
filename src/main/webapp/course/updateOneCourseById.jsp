
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="jstl" %>  
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
<form
		action="${pageContext.request.contextPath}/CourseController/updateOneCourseById.do"
		method="post">
		<div class="form-group" style="margin-top: -40px">
			<h3>
				<label>教学计划修改</label>
			</h3>
		</div>
		<!--2.1  -->
		<div class="form-group" style="margin-bottom: 30px">
		<input  type="text"   class="form-control hidden" name="coures_id" value="${course2.coures_id}"> 
			<table style="position: center;">
				<tr>
					<td style="font-weight: bold">课程名称:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
					<td><select name="courseInfo.courseinfo_id"
						class="form-control" style="width: 202px">
							<option>请选择课程</option>
							<jstl:forEach items="${listCourseInfo}" var="courseInfo">
								<jstl:if
									test="${courseInfo.courseinfo_id == course2.courseInfo.courseinfo_id}">
									<option selected="selected" id="${courseInfo.courseinfo_num }"
										value="${courseInfo.courseinfo_id }">${courseInfo.courseinfo_name }</option>
								</jstl:if>
								<jstl:if
									test="${courseInfo.courseinfo_id != course2.courseInfo.courseinfo_id}">
									<option id="${courseInfo.courseinfo_num }"
										value="${courseInfo.courseinfo_id }">${courseInfo.courseinfo_name }</option>
								</jstl:if>
							</jstl:forEach>
					</select></td>
				</tr>
			</table>
		</div>


		<!--2  -->
		<!-- <div class="form-group" style="width: 50%;left:20%;" >
			<label >课程编码</label>
			<input id="courseInfosCode" type="text" disabled="disabled"  class="form-control" name="courseInfo.courseinfo_num" placeholder="请输入课程编码"> 
		</div> -->

		<!--10-->

		<div class="form-group" style="margin-bottom: 30px">
			<table style="position: center;">
				<tr>
					<td style="font-weight: bold">课程名称:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
					<td><select name="course_class" class="form-control"
						style="width: 202px">


							<jstl:set var="arr"
								value="专业拓展平台课程,专业拓展平台课程,公共必修课,公共选修课,专业必修课,专业选修课" />

							<jstl:forEach items="${arr}" var="aaa">
								<jstl:if test="${aaa eq course2.course_class}">
									<option selected="selected" value="${aaa}">${aaa}</option>
								</jstl:if>
								<jstl:if test="${aaa ne course2.course_class}">
									<option value="${aaa}">${aaa}</option>
								</jstl:if>
							</jstl:forEach>
							<!-- <option value="通识教育平台课程">通识教育平台课程</option>
				<option value="专业拓展平台课程">专业拓展平台课程</option>
				<option value="公共必修课">公共必修课</option>
				<option value="公共选修课">公共选修课</option>
				<option value="专业必修课">专业必修课</option>
				<option value="专业选修课">专业选修课</option> -->
					</select></td>
				</tr>
			</table>
		</div>
		<!-- 12 -->

		<div class="form-group" style="margin-bottom: 30px">
			<table style="position: center;">
				<tr>
					<td style="font-weight: bold">所属院系:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
					<td><select name="college.college_id" class="form-control"
						style="width: 202px">
							<jstl:forEach items="${listCollege }" var="col">
								<jstl:if test="${col.college_id eq  course2.college.college_id}">
									<option selected="selected" value="${col.college_id }">${col.college_name }</option>
								</jstl:if>
								<jstl:if test="${col.college_id ne  course2.college.college_id}">
									<option value="${col.college_id }">${col.college_name }</option>
								</jstl:if>
							</jstl:forEach>


					</select></td>
				</tr>
			</table>
		</div>



		<!--3  -->
		<div class="form-gruop" style="margin-bottom: 30px">
			<table style="position: center;">
				<tr>

					<td style="font-weight: bold">学&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;分:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
					<td><input type="text" class="form-control"
						name="course_credit" value="${course2.course_credit}" required></td>
				</tr>
			</table>
		</div>


		<!--4  -->
		<div class="form-gruop" style="margin-bottom: 30px">
			<table style="position: center;">
				<tr>

					<td style="font-weight: bold">总&nbsp;&nbsp;学&nbsp;&nbsp;时:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
					<td><input type="text" class="form-control"
						name="course_alltime" value="${course2.course_alltime}" required></td>
				</tr>
			</table>
		</div>

		<!--5  -->
		<div class="form-gruop" style="margin-bottom: 30px">
			<table style="position: center;">
				<tr>

					<td style="font-weight: bold">理论学时:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
					<td><input type="text" class="form-control"
						name="course_theoreticaltime" value="${course2.course_theoreticaltime }" required></td>
				</tr>
			</table>
		</div>


		<!--6  -->
		<div class="form-gruop" style="margin-bottom: 30px">
			<table style="position: center;">
				<tr>

					<td style="font-weight: bold">实践学时:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
					<td><input type="text" class="form-control"
						name="course_experimentaltime"  value="${course2.course_experimentaltime }" required></td>
				</tr>
			</table>
		</div>


		<!--7 -->
		<div class="form-gruop" style="margin-bottom: 30px">
			<table style="position: center;">
				<tr>

					<td style="font-weight: bold">其他学时:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
					<td><input type="text" class="form-control"
						name="course_othertime" value="${course2.course_othertime }" required></td>
				</tr>
			</table>
		</div>

		<!--8-->
		<div class="form-gruop" style="margin-bottom: 30px">
			<table style="position: center;">
				<tr>

					<td style="font-weight: bold">周&nbsp;&nbsp;学&nbsp;&nbsp;时:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
					<td><input type="text" class="form-control"
						name="course_weektime" value="${course2.course_weektime }" required></td>
				</tr>
			</table>
		</div>
		<!--9-->
		<div class="form-gruop" style="margin-bottom: 30px">
			<table style="position: center;">
				<tr>

					<td style="font-weight: bold">开课学期:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
					<td><input type="text" class="form-control"
						name="course_opensemester" value="${course2.course_opensemester }" required></td>
				</tr>
			</table>
		</div>



		<!--11-->
		<div class="form-group" style="margin-bottom: 30px">
				<table  style="position: center;" >
				<tr>
				<td style="font-weight: bold">专&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;业:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td> <td><select name="course_exam" class="form-control" style="width: 202px">

				<jstl:set var="exa" value="考查,考试" />

				<jstl:forEach items="${exa}" var="eee">
					<jstl:if test="${eee eq course2.course_exam}">
						<option selected="selected" value="${eee}">${eee}</option>
					</jstl:if>
					<jstl:if test="${eee ne course2.course_exam}">
						<option value="${eee}">${eee}</option>
					</jstl:if>
				</jstl:forEach>
			</select>
			</td>
			</tr>
			</table>
		</div>
		
		
    
		<div class="form-group"  style="margin-left: 10%" >
		 <input type="submit" value="修改"  class="btn  btn-success">
		 <input type="reset"  value="重置"  class="btn  btn-warning">
	   </div>
	</form>
		<script type="text/javascript">
		$("#courseInfos").change(function(){
			var uu = $(this).children('option:selected').attr("id");
			$("#courseInfosCode").attr("value",uu)
		})
	</script>	
</body>
</html>