<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.sql.*,java.io.*,java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>File upload</title>
<!-- Mobile specific metas -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<!-- Force IE9 to render in normal mode -->
<!--[if IE]><meta http-equiv="x-ua-compatible" content="IE=9" /><![endif]-->
<meta name="author" content="SuggeElson" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<meta name="application-name" content="sprFlat admin template" />
<!-- Import google fonts - Heading first/ text second -->


<![endif]-->
<!-- Css files -->
<!-- Icons -->
<link href="../assets/css/icons.css" rel="stylesheet" />
<!-- jQueryUI -->
<link href="../assets/css/sprflat-theme/jquery.ui.all.css"
	rel="stylesheet" />
<!-- Bootstrap stylesheets (included template modifications) -->
<link href="../assets/css/bootstrap.css" rel="stylesheet" />
<!-- Plugins stylesheets (all plugin custom css) -->
<link href="../assets/css/plugins.css" rel="stylesheet" />
<!-- Main stylesheets (template main css file) -->
<link href="../assets/css/main.css" rel="stylesheet" />
<!-- Custom stylesheets ( Put your own changes here ) -->
<link href="../assets/css/custom.css" rel="stylesheet" />
<!-- Fav and touch icons -->
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="../assets/img/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="../assets/img/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="../assets/img/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="../assets/img/ico/apple-touch-icon-57-precomposed.png">
<link rel="icon" href="../assets/img/ico/favicon.ico" type="image/png">
<!-- Windows8 touch icon ( http://www.buildmypinnedsite.com/ )-->
<meta name="msapplication-TileColor" content="#3399cc" />
<style type="text/css">
table {
	border: 5px #CCCCCC solid;
}

td, th {
	height: 30px;
	border: #CCCCCC 2px solid;
}

.submit_s {
	width: 120px;
	height: 30 px;
	border: 1px solid #cad2db;
	padding: 0 5px;
	-moz-border-radius: 5px;
	-webkit-border-radius: 5px;
	border-radius: 5px;
	line-height: 36px;
	background-color: transparent;
	font-size: 15px;
	color: #717171;
	font-family: "微软雅黑";
}

.submit_s:hover {
	transition: border linear .2s, box-shadow linear .2s;
	-moz-transition: border linear .2s, -moz-box-shadow linear .2s;
	-webkit-transition: border linear .2s, -webkit-box-shadow linear .2s;
	outline: none;
	border-color: rgba(173, 173, 173.75);
	box-shadow: 0 0 8px rgba(173, 173, 173, .5);
	-moz-box-shadow: 0 0 8px rgba(173, 173, 173, .5);
	-webkit-box-shadow: 0 0 8px rgba(173, 173, 173, 3);
	border: 1px solid #6192c8;
}

.input_s {
	width: 200px;
	height: 30 px;
	border: 1px solid #cad2db;
	padding: 0 5px;
	-moz-border-radius: 5px;
	-webkit-border-radius: 5px;
	border-radius: 5px;
	line-height: 36px;
	background-color: transparent;
	font-size: 15px;
	color: #717171;
	font-family: "微软雅黑";
	margin-right: 20px;
}

.input_s:focus {
	transition: border linear .2s, box-shadow linear .2s;
	-moz-transition: border linear .2s, -moz-box-shadow linear .2s;
	-webkit-transition: border linear .2s, -webkit-box-shadow linear .2s;
	outline: none;
	border-color: rgba(173, 173, 173.75);
	box-shadow: 0 0 8px rgba(173, 173, 173, .5);
	-moz-box-shadow: 0 0 8px rgba(173, 173, 173, .5);
	-webkit-box-shadow: 0 0 8px rgba(173, 173, 173, 3);
	border: 1px solid #6192c8;
}
</style>
</head>
<body>
	<!-- Start #header -->
	<div id="header">
		<div class="container-fluid">
			<div class="navbar">
				<div class="navbar-header">
					<a class="navbar-brand" href="index.html"> <i
						class="im-windows8 text-logo-element animated bounceIn"></i><span
						class="text-logo">spr</span><span class="text-slogan">flat</span>
					</a>
				</div>
				<nav class="top-nav" role="navigation"> </nav>
			</div>
			<!-- Start #header-area -->
			<!-- End #header-area -->
		</div>
		<!-- Start .header-inner -->
	</div>
	<!-- End #header -->
	<!-- Start #sidebar -->
	<div id="sidebar">
		<!-- Start .sidebar-inner -->
		<div class="sidebar-inner">
			<!-- Start #sideNav -->
			<ul id="sideNav" class="nav nav-pills nav-stacked">
				<li class="top-search">
					<form>
						<input type="text" name="search" placeholder="Search ...">
						<button type="submit">
							<i class="ec-search s20"></i>
						</button>
					</form>
				</li>
				<li><a href="index.html">Dashboard <i class="im-screen"></i></a>
				</li>
				<li><a href="charts.html">Charts <i class="st-chart"></i></a></li>
				<li><a href="#"> Forms <i class="im-paragraph-justify"></i></a>
					<ul class="nav sub">
						<li><a href="forms.html"><i class="ec-pencil2"></i> Form
								Stuff</a></li>
						<li><a href="form-validation.html"><i
								class="im-checkbox-checked"></i> Form Validation</a></li>
						<li><a href="form-wizard.html"><i class="im-wand"></i>
								Form Wizard</a></li>
						<li><a href="wysiwyg.html"><i class="fa-pencil"></i>
								WYSIWYG editor</a></li>
					</ul></li>
				<li><a href="#"> Tables <i class="im-table2"></i></a>
					<ul class="nav sub">
						<li><a href="tables.html"><i class="en-arrow-right7"></i>
								Static tables</a></li>
						<li><a href="data-tables.html"><i class="en-arrow-right7"></i>
								Data tables</a></li>
					</ul></li>
				<li><a href="#"> UI Elements <i class="st-lab"></i></a>
					<ul class="nav sub">
						<li><a href="notifications.html"><i class="fa-bell"></i>
								Notifications</a></li>
						<li><a href="panels.html"><i class="br-window"></i>
								Panels</a></li>
						<li><a href="tiles.html"><i class="im-windows8"></i>
								Tiles</a></li>
						<li><a href="elements.html"><i class="st-cube"></i>
								Elements</a></li>
						<li><a href="icons.html"><i class="im-stack"></i> Icons</a></li>
						<li><a href="buttons.html"><i class="im-play2"></i>
								Buttons</a></li>
						<li><a href="calendar.html"><i class="im-calendar2"></i>
								Calendar</a></li>
						<li><a href="grid.html"><i class="st-grid"></i> Grid</a></li>
						<li><a href="typo.html"><i class="im-font"></i>
								Typography</a></li>
						<li><a href="list.html"><i class="fa-list"></i> Lists</a></li>
					</ul></li>
				<li><a href="#"><i class="ec-mail"></i> Email app</a>
					<ul class="nav sub">
						<li><a href="email-inbox.html"><i class="ec-archive"></i>
								Inbox</a></li>
						<li><a href="email-read.html"><i class="br-eye"></i> Read
								email</a></li>
						<li><a href="email-write.html"><i class="ec-pencil2"></i>
								Write email</a></li>
					</ul></li>
				<li><a href="file.html"><i class="en-upload"></i> File
						Manager</a></li>
				<li><a href="gallery.html"><i class="im-images"></i>
						Gallery</a></li>
				<li><a href="widgets.html"><i class="st-diamond"></i>
						Widgets </a></li>
				<li><a href="#"><i class="ec-location"></i> Maps</a>
					<ul class="nav sub">
						<li><a href="maps-google.html"><i class="im-map2"></i>
								Google maps</a></li>
						<li><a href="maps-vector.html"><i class="en-location2"></i>
								Vector maps</a></li>
					</ul></li>
				<li><a href="#">Pages <i class="st-files"></i></a>
					<ul class="nav sub">
						<li><a href="invoice.html"><i class="st-file"></i>
								Invoice</a></li>
						<li><a href="profile.html"><i class="ec-user"></i>
								Profile page</a></li>
						<li><a href="search.html"><i class="ec-search"></i>
								Search page</a></li>
						<li><a href="blank.html"><i class="im-file4"></i> Blank
								page</a></li>
						<li><a href="login.html"><i class="ec-locked"></i> Login
								page</a></li>
						<li><a href="lockscreen.html"><i class="ec-locked"></i>
								Lock screen</a></li>
						<li><a href="#"><i class="st-files"></i> Error pages</a>
							<ul class="nav sub">
								<li><a href="400.html"><i class="st-file-broken"></i>
										Error 400</a></li>
								<li><a href="401.html"><i class="st-file-broken"></i>
										Error 401</a></li>
								<li><a href="403.html"><i class="st-file-broken"></i>
										Error 403</a></li>
								<li><a href="404.html"><i class="st-file-broken"></i>
										Error 404</a></li>
								<li><a href="405.html"><i class="st-file-broken"></i>
										Error 405</a></li>
								<li><a href="500.html"><i class="st-file-broken"></i>
										Error 500</a></li>
								<li><a href="503.html"><i class="st-file-broken"></i>
										Error 503</a></li>
								<li><a href="offline.html"><i class="st-window"></i>
										Offline</a></li>
							</ul></li>
					</ul></li>
				<li><a href="#">Bonus <i class="im-gift"></i></a>
					<ul class="nav sub">
						<li><a href="landing.html"><i class="im-airplane"></i>
								Landing page</a></li>
					</ul></li>
			</ul>
			<!-- End #sideNav -->

		</div>
		<!-- End .sidebar-inner -->
	</div>
	<!-- End #sidebar -->

	<!-- Start #content -->
	<div id="content">
		<!-- Start .content-wrapper -->
		<div class="content-wrapper">
			<div class="row">
				<!-- Start .row -->
				<!-- Start .page-header -->
				<div class="col-lg-12 heading">
					<h1 class="page-header">
						<i class="en-upload"></i> File manager
					</h1>
					<!-- Start .bredcrumb -->
					<ul id="crumb" class="breadcrumb">
					</ul>
					<!-- End .breadcrumb -->
					<!-- Start .option-buttons -->

					<!-- End .option-buttons -->
				</div>
				<!-- End .page-header -->
			</div>
			<div class="outlet">
				<!-- Start .outlet -->
				<div class="row">
					<div class="col-md-12">
						<form action="${pageContext.request.contextPath }/user/findall"
							method="post">
							<input type="submit" value="查看所有用户" class="submit_s">
						</form>
						<form action="${pageContext.request.contextPath }/user/logout"
							method="post">
							<input type="submit" value="注销" class="submit_s">

						</form>
						<form
							action="${pageContext.request.contextPath }/user/find/${username}/editpwd"
							method="post">
							<input type="submit" value="修改密码" class="submit_s">

						</form>

						<form
							action="${pageContext.request.contextPath }/user/find/${username}/edituser"
							method="post">
							<input type="submit" value="修改个人信息" class="submit_s">

						</form>

						<form id="fileupload"
							action="${pageContext.request.contextPath }/doc/upload"
							method="post" enctype="multipart/form-data">

							<h3 style="margin-left: 15px;">&nbsp;&nbsp;上传请点击</h3>

							<input type="file" name="file"
								style="margin-left: 15px; margin-top: 15px;" /> <br /> <input
								type="submit" value="提交" class="submit_s" /> <br>

						</form>

						<br>
						<form
							action="${pageContext.request.contextPath}/doc/findByUsername"
							method="post">
							<input type="text" name="findusername" class="input_s"
								placeholder="输入查找的username" /> <input type="submit" value="查找">
						</form>
						<br>
						<form action="${pageContext.request.contextPath}/doc/findById"
							method="post">
							<input type="text" name="findid" class="input_s"
								placeholder="输入查找的id" /> <input type="submit" value="查找">
						</form>
						<br>
						<form action="${contextPath}/doc/findAllMine" method="post">
							<input type="submit" value="查看我的文件" class="submit_s">
						</form>
						<br>
						<form action="${contextPath}/doc/findall" method="post">
							<input type="submit" value="查看所有文件" class="submit_s">
						</form>
						<br>



						<!-- 显示所有 -->
						<br>
						<br>
						<c:choose>
							<c:when test="${empty docList}">

							</c:when>
							<c:otherwise>
								<table>
									<tr>

										<th>ID</th>
										<th>Filename</th>
										<th>SavePath</th>
										<th>FileSize</th>
										<th>Catalog</th>
										<th>FileType</th>
										<th>Memo</th>
										<th>IsShare</th>
										<th>UserName</th>
										<th>UpLoaddate</th>
										<th>Count</th>
										<th>管理</th>
									</tr>

									<c:forEach items="${docList}" var="d">
										<tr>

											<td>${d.id }</td>
											<td>${d.filename }</td>
											<td>${d.savepath }</td>
											<td>${d.filesize }</td>
											<td>${d.catalog}</td>
											<td>${d.filetype}</td>
											<td>${d.memo}</td>
											<td>${d.isshare}</td>
											<td>${d.username}</td>
											<td>${d.uploaddate}</td>
											<td>${d.count}</td>
											<td><a
												href="${pageContext.request.contextPath }/doc/delete/${d.id}">删除</a>&nbsp;
												<a
												href="${pageContext.request.contextPath }/doc/download/${d.filename }/">下载&nbsp;</a>
												<c:choose>
													<c:when test="${d.isshare =='1'}">
														<a href="${contextPath}/doc/updateIsshare/${d.id }/0"
															class="btn btn-success btn-xs">取消共享</a>
													</c:when>
													<c:otherwise>
														<a href="${contextPath}/doc/updateIsshare/${d.id }/1"
															class="btn btn-success btn-xs">开启共享</a>
													</c:otherwise>
												</c:choose></td>
										</tr>
									</c:forEach>
								</table>
							</c:otherwise>
						</c:choose>
						<br> <br>
						<c:choose>
							<c:when test="${empty doc}">
								
							</c:when>
							<c:otherwise>
								<table>
									<tr>

										<th>ID</th>
										<th>Filename</th>
										<th>SavePath</th>
										<th>FileSize</th>
										<th>Catalog</th>
										<th>FileType</th>
										<th>Memo</th>
										<th>IsShare</th>
										<th>UserName</th>
										<th>UpLoaddate</th>
										<th>Count</th>
										<th>管理</th>
									</tr>
									<tr>
										<td>${doc.id}</td>
										<td>${doc.filename}</td>
										<td>${doc.savepath}</td>
										<td>${doc.filesize}</td>
										<td>${doc.catalog}</td>
										<td>${doc.filetype}</td>
										<td>${doc.memo}</td>
										<td>${doc.isshare}</td>
										<td>${doc.username}</td>
										<td>${doc.uploaddate}</td>
										<td>${doc.count}</td>
										<td><a
											href="${pageContext.request.contextPath }/doc/delete/${doc.id}">删除</a>&nbsp;
											<a
											href="${pageContext.request.contextPath }/doc/download/${doc.filename }/">下载&nbsp;</a>

										</td>
									</tr>
								</table>
							</c:otherwise>
						</c:choose>

						<br> <br>
						<div class="panel panel-success">
							<div class="panel-heading">
								<h3 class="panel-title">Demo Notes</h3>
							</div>
							<div class="panel-body">
								<ul>
									<li>The maximum file size for uploads in this demo is <strong>5
											MB</strong> (default file size is unlimited).
									</li>
									<li>Only image files (<strong>JPG, GIF, PNG</strong>) are
										allowed in this demo (by default there is no file type
										restriction).
									</li>
									<li>Uploaded files will be deleted automatically after <strong>5
											minutes</strong> (demo setting).
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<!-- Page End here -->
			</div>


		</div>
		<!-- End .content-wrapper -->
		<div class="clearfix"></div>
	</div>



</body>
</html>