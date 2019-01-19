<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title></title>

<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Custom Drop-Down List Styling</title>
<meta name="description"
	content="Custom Drop-Down List Styling with CSS3" />
<meta name="author" content="Codrops" />
<link rel="shortcut icon" href="../favicon.ico">
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:300,400,600&subset=latin,latin-ext'
	rel='stylesheet'>
<script type="text/javascript" src="js/modernizr.custom.79639.js"></script>
<noscript>
	<link rel="stylesheet" type="text/css" href="css/noJS.css" />
</noscript>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<script src="js/bootstrapValidator.min.js" type="application/javascript"></script>
<link href="css/dashboard.css" rel="stylesheet" type="text/css">
<link href="css/bootstrapValidator.min.css" rel="stylesheet"
	type="text/css" />
<link rel="stylesheet"
	href="https://cdn.staticfile.org/font-awesome/4.7.0/css/font-awesome.css">
<script type="text/javascript">
	
<%//获取请求的URl
			String path = request.getRequestURI();
			String userName = String.valueOf(session.getAttribute("userName"));
			if (!(!"".equals(userName) && !"null".equals(userName) && userName != null)) {
				userName = "请登录";
			}
			String userNameForOut = aproveName(userName);%>
	
<%!public String aproveName(String userName) {
		char[] names = userName.toCharArray();
		StringBuffer str = new StringBuffer();
		if (names.length > 3) {
			for (int i = 0; i < 2; i++) {
				str.append(names[i]);
			}
			str.append("...");
		} else {
			str.append(userName);
		}

		return str.toString();
	}%>
	window.onload = function() {
		var c = document.getElementById('hrefForStu');
		c.click();

	}
</script>
</head>
<body>
	<div class="cc1 nav navbar-default navbar-fixed-top "
		style="background-color: #CCFF99">
		<div class="nav navbar-header">
			<a class="navbar-brand" href="#"><a style="font-size: 30px">信息化教学平台</a></a>
		</div>

		<%-- <ul class="nav navbar-nav  navbar-right">


			<li><a href="webapp/index.jsp">退出</a></li>
			<%
				if (!"请登录".equals(userName)) {
			%>

			<li><a class="btn btn-default btn-xs" href="#" target="main1">
					<span class="glyphicon glyphicon-user"></span><%=userNameForOut%>
			</a></li>
			<%
				} else {
			%>
			<li><a class="btn btn-default btn-xs" href="#"> <span
					class="glyphicon glyphicon-user"></span><%=userName%>
			</a></li>
			<%
				}
			%>

		</ul> --%>


	</div>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-2 col-sm-2 ">
				<div id="dd1" class="nav navbar-default sidebar"
					style="background-color: #FFFFCC">
					<section class="main">
					<div class="wrapper-demo">
						<div id="dd" class="wrapper-dropdown-5" tabindex="1">
							院系管理
							<ul class="dropdown">
								<li><a id="proveForStu"
									href="${pageContext.request.contextPath}/college/addOneCollege.jsp"
									target="main1">院系添加</a></li>
								<li><a
									href="${pageContext.request.contextPath}/CollegeController/queryAllCollege.do"
									target="main1">院系查询</a></li>
							</ul>
						</div>
						​
					</div>
					</section>
					<section class="main">
					<div class="wrapper-demo">
						<div id="dd2" class="wrapper-dropdown-5" tabindex="2">
							专业管理
							<ul class="dropdown">
								<li><a
									href="${pageContext.request.contextPath}/MajorController/AddMajorInfo.do"
									target="main1">专业添加</a></li>
								<li><a
									href="${pageContext.request.contextPath}/MajorController/findAllMajorList.do"
									target="main1">专业查询</a></li>
							</ul>
						</div>

						​
					</div>

					</section>
					<section class="main">

					<div class="wrapper-demo">

						<div id="dd4" class="wrapper-dropdown-5" tabindex="4">
							班级管理
							<ul class="dropdown">
								<li><a id="showAddOneClassInfo"
									href="${pageContext.request.contextPath}/ClassInfoController/showAddOneClassInfo.do"
									target="main1">班级添加</a></li>
								<li><a
									href="${pageContext.request.contextPath}/ClassInfoController/findAllClassList.do"
									target="main1">班级信息查询</a></li>
							</ul>
						</div>
						​
					</div>
					</section>
					<section class="main">

					<div class="wrapper-demo">

						<div id="dd3" class="wrapper-dropdown-5" tabindex="3">
							课程管理
							<ul class="dropdown">
								<li><a id="proveForStu"
									href="${pageContext.request.contextPath}/course/addCourseInfo.jsp"
									target="main1">课程添加</a></li>
								<li><a
									href="${pageContext.request.contextPath}/CourseInfoController/queryCourseInfo.do"
									target="main1">课程查询</a></li>
								<%-- <li><a
									href="${pageContext.request.contextPath}/course/upcoursefile.jsp"
									target="main1">课程信息上传</a></li> --%>
								
							<%-- 	<li><a
									href="${pageContext.request.contextPath}/UploadController/downloadFile.do"
									target="main1">课程下载文件</a></li> --%>
							</ul>
						</div>
						​
					</div>
					</section>
					<section class="main">

					<div class="wrapper-demo">

						<div id="dd7" class="wrapper-dropdown-5" tabindex="4">
							教学计划
							<ul class="dropdown">
								<li><a
									href="${pageContext.request.contextPath}/CourseController/addOneCourseWithAllIndo.do"
									target="main1">教学计划课添加</a></li>
								<li><a
									href="${pageContext.request.contextPath}/CourseController/queryAllCourse.do"
									target="main1">教学计划课查询</a></li>
							</ul>
						</div>
						​
					</div>
					</section>
					
					<section class="main">

					<div class="wrapper-demo">

						<div id="dd5" class="wrapper-dropdown-5" tabindex="5">
							教师管理

							<ul class="dropdown">
								<li><a id="proveForStu"
									href="${pageContext.request.contextPath}/TeacherController/queryAllCollege.do"
									target="main1">教师添加</a></li>
								<li><a
									href="${pageContext.request.contextPath}/TeacherController/queryAllTeacher.do"
									target="main1">教师信息查询</a></li>
								<%-- <li><a
									href="${pageContext.request.contextPath}/TeacherController/queryAllCollege.do"
									target="main1">上传教师信息</a></li> --%>
							</ul>
						</div>
						​
					</div>
					</section>
					<section class="main">
					<div class="wrapper-demo">

						<div id="dd6" class="wrapper-dropdown-5" tabindex="6">
							开课计划
							<ul class="dropdown">
								<li><a id="proveForStu"
									href="${pageContext.request.contextPath}/OpenCourseController/queryAllMajor.do"
									target="main1">开课计划</a></li>
								<li><a
									href="${pageContext.request.contextPath}/OpenCourseController/queryAllCoursePlan.do"
									target="main1">开课计划查询</a></li>
								<li><a
									href="${pageContext.request.contextPath}/OpenCourseController/queryAllFinishedCoursePlan.do"
									target="main1">开课任务查询</a></li>
							</ul>
						</div>
					</div>
					</section>
				</div>
			</div>
			<div id="dd12" class="col-md-10 col-sm-10  ">
				<p>&nbsp;</p>
				<p>&nbsp;</p>
				<iframe width="1100px" height="600px" name="main1"
					style="border-style: none"></iframe>
			</div>

		</div>

	</div>
	<script type="text/javascript">
		function DropDown(el) {

			this.dd = el;

			this.initEvents();

		}

		DropDown.prototype = {

			initEvents : function() {

				var obj = this;

				obj.dd.on('click', function(event) {

					$(this).toggleClass('active');

					event.stopPropagation();

				});

			}

		}

		$(function() {

			var dd = new DropDown($('#dd'));

			$(document).click(function() {

				// all dropdowns

				$('.wrapper-dropdown-5').removeClass('active');

			});

		});
	</script>
	<script type="text/javascript">
		function DropDown(el) {

			this.dd = el;

			this.initEvents();

		}

		DropDown.prototype = {

			initEvents : function() {

				var obj = this;

				obj.dd.on('click', function(event) {

					$(this).toggleClass('active');

					event.stopPropagation();

				});

			}

		}

		$(function() {

			var dd = new DropDown($('#dd2'));

			$(document).click(function() {

				// all dropdowns

				$('.wrapper-dropdown-5').removeClass('active');

			});

		});
	</script>
	<script type="text/javascript">
		function DropDown(el) {

			this.dd = el;

			this.initEvents();

		}

		DropDown.prototype = {

			initEvents : function() {

				var obj = this;

				obj.dd.on('click', function(event) {

					$(this).toggleClass('active');

					event.stopPropagation();

				});

			}

		}

		$(function() {

			var dd = new DropDown($('#dd3'));

			$(document).click(function() {

				// all dropdowns

				$('.wrapper-dropdown-5').removeClass('active');

			});

		});
	</script>
	<script type="text/javascript">
		function DropDown(el) {

			this.dd = el;

			this.initEvents();

		}

		DropDown.prototype = {

			initEvents : function() {

				var obj = this;

				obj.dd.on('click', function(event) {

					$(this).toggleClass('active');

					event.stopPropagation();

				});

			}

		}

		$(function() {

			var dd = new DropDown($('#dd4'));

			$(document).click(function() {

				// all dropdowns

				$('.wrapper-dropdown-5').removeClass('active');

			});

		});
	</script>
	<script type="text/javascript">
		function DropDown(el) {

			this.dd = el;

			this.initEvents();

		}

		DropDown.prototype = {

			initEvents : function() {

				var obj = this;

				obj.dd.on('click', function(event) {

					$(this).toggleClass('active');

					event.stopPropagation();

				});

			}

		}

		$(function() {

			var dd = new DropDown($('#dd5'));

			$(document).click(function() {

				// all dropdowns

				$('.wrapper-dropdown-5').removeClass('active');

			});

		});
	</script>
	<script type="text/javascript">
		function DropDown(el) {

			this.dd = el;

			this.initEvents();

		}

		DropDown.prototype = {

			initEvents : function() {

				var obj = this;

				obj.dd.on('click', function(event) {

					$(this).toggleClass('active');

					event.stopPropagation();

				});

			}

		}

		$(function() {

			var dd = new DropDown($('#dd6'));

			$(document).click(function() {

				// all dropdowns

				$('.wrapper-dropdown-5').removeClass('active');

			});

		});
	</script>
	<script type="text/javascript">
		function DropDown(el) {

			this.dd = el;

			this.initEvents();

		}

		DropDown.prototype = {

			initEvents : function() {

				var obj = this;

				obj.dd.on('click', function(event) {

					$(this).toggleClass('active');

					event.stopPropagation();

				});

			}

		}

		$(function() {

			var dd = new DropDown($('#dd7'));

			$(document).click(function() {

				// all dropdowns

				$('.wrapper-dropdown-5').removeClass('active');

			});

		});
	</script>

</body>
</html>