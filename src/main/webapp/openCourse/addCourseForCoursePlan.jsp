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
	$(function(){
		 $("#queryClass").click(function(){
			 var params = $("#form1").serialize();
			 $.ajax({url:"${pageContext.request.contextPath}/OpenCourseControllerueryInfoOfClass.do",data:params,success:function(msg)
					{
				if(msg.length > 0){
					alert('查询成功,请开课')
				}else{
					alert('暂未查到该班级信息,请联系管理员确认该班级是否存在')
				}
				 for(i=0;i<msg.length;i++)
					{
	 var tr="<tr><td>"+msg[i].major.college.college_name+"</td><td>"+msg[i].major.major_name+"</td><td>"+msg[i].grade+"</td><td>"+msg[i].class_name
	 			+'</td><td><input type="checkbox"  value="'+msg[i].class_id+'"  name="infoOfClassId" /></td></tr>';
	 
			$("#tb").append(tr);			 
					}
			}
			});
		})
		
		
		
		 $("#open2").click(function(){
			 var infoOfClassId = new Array();
			 $("input:checkbox[name='infoOfClassId']:checked").each(function() {
				 infoOfClassId.push( $(this).val());
			 });
			 var temp = {"item":infoOfClassId};
			 alert(infoOfClassId)
			 var params = $("#form1").serialize();
			 $.ajax({url:"${pageContext.request.contextPath}/OpenCourseController/addOneCoursePlan.do",data:temp,success:function(msg)
					{
			
			}
			});
		})
		})
	</script>
</head>
<body>
	<table class="table table-striped">
		<tr>
			<td>院系名称</td>
			<td>专业名称</td>
			<td>年级</td>
			<td>班级</td>
		</tr>
		<jstl:forEach items="${listClassInfos }" var="cifs">
			<td>${cifs.major.college.college_name }</td>
			<td>${cifs.major.major_name }</td>
			<td>${cifs.grade }</td>
			<td>${cifs.class_name }</td>

		</jstl:forEach>

	</table>
	<form id="form1" method="post">
		<!-- 1 -->
		<div class="form-group col-md-1">
			<label class="control-lable ">班级年级</label>

		</div>
		<div class="form-group col-md-2">
			<select name="grade" class="form-control ">
				<option>请选择年级</option>
				<jstl:forEach items="${listGrade }" var="grad">
					<option value="${grad}">${grad}</option>
				</jstl:forEach>

			</select>
		</div>


		<!--2  -->
		<div class="form-group col-md-1">
			<label class="">班级专业</label>
		</div>

		<div class="form-group col-md-2">
			<select id="courseInfos" name="major.major_id" class="form-control ">
				<option>请选择专业</option>
				<jstl:forEach items="${listMajor }" var="maj">
					<option id="${maj.college.college_name }" value="${maj.major_id }">${maj.major_name }</option>
				</jstl:forEach>

			</select>

		</div>

		<!-- <!-- 3 -->
		<div class="form-group col-md-1">
			<label class="">院系名称</label>
		</div>

		<div class="form-group col-md-2">
			<input type="text" id="courseCollege" class="form-control "
				name="courseinfo_name">
		</div>


		<div class="form-group col-md-3">
			<input type="button" value="查询" id="queryClass" class="btn  btn-info">
		</div>
	</form>


	<table class="table table-striped" id="tb">
		<tr>
			<td>院系名称</td>
			<td>专业名称</td>
			<td>年级</td>
			<td>班级</td>
			<td>开课</td>
		</tr>

	</table>


	<form
		action="${pageContext.request.contextPath}/OpenCourseController/addOneCoursePlan.do"
		method="post">
		<div class="form-group ">
			<input type="button" value="开课" id="open2" class="btn  btn-info">
			<input type="reset" value="重置" class="btn  btn-info">
		</div>
	</form>




	<script type="text/javascript">
		$("#courseInfos").change(function(){
			var uu = $(this).children('option:selected').attr("id");
			$("#courseCollege").attr("value",uu)
		})
	</script>
</body>
</html>