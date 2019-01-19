<%@page import="com.qst.infos.entity.MajorEntity"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="/meetingWeb2/js/jquery.min.js"></script>
<script src="/imps/js/jquery.min.js" type="application/javascript"></script>
<link href="/imps/css/bootstrap.min.css" rel="stylesheet"
	type="text/css">
<script src="/imps/js/bootstrap.min.js" type="application/javascript"></script>
<link href="/imps/css/dashboard.css" rel="stylesheet" type="text/css">

</head>

<body>
	<script type="text/javascript">
		function check() {
			if (form1.grade.value == " ") {
				alert("年级不能为空!");
				return false;
			}
			if (form1.class_name.value == " ") {
				alert("班级名称不能为空!");
				return false;
			}
			if (form1.pop_num.value == " ") {
				alert("班级人数不能为空!");
				return false;
			}
		}
	</script>
	<div class="form-group" style="margin-top: -40px">
		<h3>
			<label>班级添加</label>
		</h3>
	</div>

	<%
		List<MajorEntity> list = (List<MajorEntity>) request.getAttribute("majorList");
	%>
	<form
		action="${pageContext.request.contextPath}/ClassInfoController/addOneClassInfo.do"
		method="post" id="form1" onsubmit="return check()"
		style="margin-top: 30px">
		<div class="form-gruop" style="margin-bottom: 30px">
			<table style="position: center;">
				<tr>

					<td style="font-weight: bold">年&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;级:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
					<td><input type="text" class="form-control" name="grade"
						required></td>
				</tr>
			</table>
		</div>


		<div class="form-gruop" style="margin-bottom: 30px">
			<table style="position: center;">
				<tr>

					<td style="font-weight: bold">班级名称:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
					<td><input type="text" class="form-control" name="class_name"
						required></td>
				</tr>
			</table>
		</div>
		<div class="form-gruop" style="margin-bottom: 30px">
			<table style="position: center;">
				<tr>

					<td style="font-weight: bold">班级人数:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
					<td><input type="text" class="form-control" name="pop_num"
						required></td>
				</tr>
			</table>
		</div>
		<div class="form-group" style="margin-bottom: 30px">
			<table style="position: center;">
				<tr>
					<td style="font-weight: bold">专&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;业:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
					<td><select name="major.major_id" class="form-control"
						style="width: 202px">
							<%
								for (MajorEntity m : list) {
							%>
							<option value="<%=m.getMajor_id()%>"><%=m.getMajor_name()%>
							</option>
							<%
								}
							%>
					</select></td>
				</tr>
			</table>
		</div>
		<div class="form-group" style="margin-left: 8%">
			<input type="submit" value="添加" class="btn  btn-success"> <input
				type="reset" value="重置" class="btn  btn-warning">
		</div>

	</form>
</body>
</html>