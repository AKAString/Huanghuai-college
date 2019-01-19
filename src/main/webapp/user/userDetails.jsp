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
						<a class="page-header" href="#"><h4><b>用户信息管理</b></h4></a>
						<ol>
							<h5>&nbsp;</h5>
						</ol>
						
						<h4>1. <a id="proveForStu"   href="addUser.jsp" target="main1">用户增加</a></h4>
						<h4>2. <a   href="addUserByAjax.jsp" target="main1">Ajax增加</a></h4>
						<h4>3. <a   href="${pageContext.request.contextPath}/user/queryAllUser.do" target="main1">用户查询</a></h4>
						<h4>4. <a   href="showAllUserByAjax.jsp" target="main1">Ajax查询</a></h4>
						<h4>5. <a   href="Stuservlet?type=stuquery3" target="main1">分页查询</a></h4>
						<h4>6. <a   href="uploadOfUser.jsp" target="main1">上传文件</a></h4>
						<h4>7. <a   href="${pageContext.request.contextPath}/UploadController/downloadFile.do" target="main1">下载文件</a></h4>
	</div>
<body>

	
</body>

</html>