

<%@page import="com.qst.infos.entity.MajorEntity"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="/imps/js/jquery.min.js" type="application/javascript"></script>
    <link href="/imps/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <script src="/imps/js/bootstrap.min.js" type="application/javascript"></script>
    <link href="/imps/css/dashboard.css" rel="stylesheet" type="text/css">
</head>
<body>
<div class="form-group"  style="margin-top: -40px">
			<h3><label >专业查询</label></h3>
		</div>
<table class="table table-striped" id="tb" border="1" >
<%
List<MajorEntity> list=(List<MajorEntity>) request.getAttribute("majorlist");

      %>
<thead>
	<tr>
	<td>编号</td>
	<td>学院名称</td>
	<td>专业名称</td>
	<td>操作</td>
	</tr>
	</thead>
<%
for(MajorEntity m:list){
	%>       	
	<tr>
	<td><%=m.getMajor_id()%></td>
	<td><%=m.getCollege().getCollege_name()%></td>
	<td><%=m.getMajor_name()%></td>
	
	<td><a href="/imps/MajorController/findOneMajorById.do?major_id=<%=m.getMajor_id()%>" target="main1" class="btn btn-primary">修改</a>
	<a href="/imps/MajorController/deleteOneMajorById.do?major_id=<%=m.getMajor_id()%>" target="main1" class="btn btn-danger">删除</a>
	</td>
	
	<tr/>
	<%
}
%>
</table>
</body>
</html>