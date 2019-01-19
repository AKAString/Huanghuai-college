<%@page import="com.qst.infos.entity.ClassInfoEntity"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="jstl"%>
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
<div class="form-group"  style="margin-top: -40px">
			<h3><label >班级查询</label></h3>
		</div>
<%
	List<ClassInfoEntity> list=(List<ClassInfoEntity>) request.getAttribute("classlist");
%>
<table class="table table-striped" id="tb" border="1">
<thead>
		<tr> 
		        <td> 年级</td>
		        <td> 学院</td>
		        <td> 专业</td>
				<td> 班级名称</td>
				<td> 班级人数</td>
				
				
				<td> 操作</td>
				
			</tr>
			</thead>
			
		<%
						for(ClassInfoEntity c:list){
					%>       
	<tr>
	<td><%=c.getGrade()%></td>
	<td><%=c.getMajor().getCollege().getCollege_name()%></td>
	<td><%=c.getMajor().getMajor_name()%></td>
	<td><%=c.getClass_name()%></td>
	<td><%=c.getPop_num()%></td>

	<td><a href="/imps/ClassInfoController/findOneClassById.do?class_id=<%=c.getClass_id()%>" target="main1" class="btn btn-primary">修改</a>
	<a href="/imps/ClassInfoController/deleteOneClassById.do?class_id=<%=c.getClass_id()%>" target="main1" class="btn btn-danger">删除</a>
</td>
	
	</tr>
	<%
}
%>

</table>
			
</body>
</html>