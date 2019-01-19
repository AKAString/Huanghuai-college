<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
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
		
		<script type="text/javascript">
			window.onload=function(){
				var c = document.getElementById('proveForStu');
				c.click();
			}
			
				
		</script>
		<style type="text/css">
			html,body {
            height: 100%;
            width:100%
        }
        
		</style>
</head>
	<div id="bgi"  style="background-color:#CCFFCC; height: 100%" >
						<a class="page-header" href="#">&nbsp;</a>
						<a class="page-header" href="#"><h4><b>教师信息管理</b></h4></a>
						<ol>
							<h5>&nbsp;</h5>
						</ol>
						<h4>1. <a id="proveForStu"   href="${pageContext.request.contextPath}/TeacherController/queryAllCollege.do" target="main1">教师添加</a></h4>
						<h4>2. <a   href="${pageContext.request.contextPath}/TeacherController/queryAllTeacher.do" target="main1">教师信息查询</a></h4>
						<h4>1. <a   href="${pageContext.request.contextPath}/TeacherController/queryAllCollege.do" target="main1">上传教师信息</a></h4>
	</div>
<body>

	
</body>

</html>