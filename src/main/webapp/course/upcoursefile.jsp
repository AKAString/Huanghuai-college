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
	
</head>
<body>
<!-- <div  class="alert alert-success">
			<a href="#" class="close" >&times;</a>
			<strong>上传须知!!!</strong>上传文件暂支持txt格式，且数据第一列为课程编号，第二列为课程名称，或相反
</div> -->
<form action="${pageContext.request.contextPath}/CourseInfoController/uploadFile.do" method="post" enctype="multipart/form-data">
		<!-- 1 -->
		<div class="form-group" style="margin-top: -40px">
		<h2>
			<label>课程信息上传</label>
		</h2>
	</div>
		<div class="form-group" style="width: 50%;left:20%;" >
			<label for="">文件名</label>
			<input type="text" class="form-control" name="fileName" placeholder="请输入文件名"> 
		</div>
		
		<!--2  -->
		<div class="form-group" style="width: 50%;left:20%;" >
			<label >文件</label>
			<input type="file"  name="uploadFile" > 
		</div>
		
		
		
    
		<div class="form-group" style="margin-left: 18%"  >
		 <input type="submit" value="上传"  class="btn  btn-info">
		 <input type="reset"  value="重置"  class="btn  btn-info">
	   </div>
	</form>
			
</body>
</html>