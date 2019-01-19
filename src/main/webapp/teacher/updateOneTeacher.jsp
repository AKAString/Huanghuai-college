<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="jstl"%>
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
<div class="form-group"  style="margin-top: -40px">
			<h3><label >教师信息修改</label></h3>
		</div>
<form action="${pageContext.request.contextPath}/TeacherController/updateOneTeacher.do" method="post">
		
		<!-- 1 -->
		<div class="form-gruop" style="margin-bottom: 30px">
		<input type="text" class="form-control hidden" name="teacher_id" value="${teach.teacher_id }"> 
			<table style="position: center;">
				<tr>

					<td style="font-weight: bold">教师姓名:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
					<td><input type="text" class="form-control"
						name="teacher_name" value="${teach.teacher_name }"  required></td>
				</tr>
			</table>
		</div>
		
		
		<!--3  -->
		<div class="form-group" style="margin-bottom: 30px">
			<table style="position: center;">
				<tr>
					<td style="font-weight: bold">教师性别:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
					<td><select name="teacher_sex" class="form-control"
						style="width: 202px">
			
			<jstl:set var="sexes" value="男,女" />
				
				<jstl:forEach items="${sexes}" var="sex">
						<jstl:choose>
							<jstl:when test="${teach.teacher_sex eq sex}">
								<option selected="selected" value="${sex}">${sex}</option>
							</jstl:when>
							<jstl:otherwise>
									<option value="${sex}">${sex}</option>
							</jstl:otherwise>
						
						</jstl:choose>
				</jstl:forEach>
			</select>
			</td>
			</tr>
			</table>
				
		</div>
		
		<!--4  -->
		<div class="form-gruop" style="margin-bottom: 30px">
			<table style="position: center;">
				<tr>

					<td style="font-weight: bold">出生日期:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
					<td><input type="date" name="teacher_birthdate"
						class="form-control"  value="${teach.teacher_birthdate }" required></td>
				</tr>
			</table>
		</div>
		
		<!--5  -->
		<div class="form-gruop" style="margin-bottom: 30px">
			<table style="position: center;">
				<tr>

					<td style="font-weight: bold">入职日期:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
					<td><input type="date" name="teacher_intime" value="${teach.teacher_intime }"
						class="form-control" /></td>
				</tr>
			</table>
		</div>
		<!--6  -->
		<div class="form-group" style="margin-bottom: 30px">
			<table style="position: center;">
				<tr>
					<td style="font-weight: bold">所属学院:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
					<td><select name="college.college_id" class="form-control"
						style="width: 202px">
			<jstl:forEach items="${listCollege}" var="col">
					<jstl:choose>
						<jstl:when test="${teach.college.college_id eq col.college_id}">
							<option selected="selected" value="${col.college_id}">${col.college_name}</option>
						</jstl:when>
						<jstl:otherwise>
							<option  value="${col.college_id}">${col.college_name}</option>
						</jstl:otherwise>
					
					</jstl:choose>
			
			
					
				</jstl:forEach>
			</select>	
			</td>
			</tr>
			</table>
		</div>
		
		<!--7 -->
		<div class="form-group" style="margin-bottom: 30px">
			<table style="position: center;">
				<tr>
					<td style="font-weight: bold">教师学历:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
					<td><select name="teacher_education" class="form-control"
						style="width: 202px">
			
			<jstl:set var="ccd" value="专科及以下,本科,硕士,硕士(在读),博士,博士(在读)" />
			
			<jstl:forEach items="${ccd}" var="ccd">
					<jstl:choose>
						<jstl:when test="${teach.teacher_education eq ccd}">
							<option selected="selected" value="${ccd}">${ccd}</option>
						</jstl:when>
						<jstl:otherwise>
							<option value="${ccd}">${ccd}</option>
						</jstl:otherwise>
					
					</jstl:choose>
			
			
					
				</jstl:forEach>
			</select>	
			</td>
			</tr>
			</table>
		</div>
		
		<div class="form-group" style="margin-bottom: 30px">
			<table style="position: center;">
				<tr>
					<td style="font-weight: bold">任职状态:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
					<td><select name="teacher_state" class="form-control"
						style="width: 202px">
			<jstl:set var="arr" value="在职,离职,外校(境内),外校(境外)" />
			
			<jstl:forEach items="${arr}" var="aaa">
					<jstl:choose>
						<jstl:when test="${teach.teacher_state eq aaa}">
							<option selected="selected" value="${aaa}">${aaa}</option>
						</jstl:when>
						<jstl:otherwise>
							<option value="${aaa}">${aaa}</option>
						</jstl:otherwise>
					
					</jstl:choose>
				</jstl:forEach>
			</select>	
			</td>
			</tr>
			</table>
		</div>
		
		
    
		<div class="form-group" style="margin-left: 20%">
		<input type="submit" value="修改" class="btn  btn-success"> <input
				type="reset" value="重置" class="btn  btn-warning">
		</div>
	</form>
			
</body>
</html>