<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*,java.io.*,java.util.*"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>管理员界面</title>
<link rel="stylesheet" type="text/css" href="css/admin.css">
</head>
<body>
	<div class="box">
		<div class="admin"
			style="text-align: center; color: #ffffff; padding-top: 10px">欢迎${username}进入磁盘管理界面</div>
		<div class="mulu">
			<ul class="nav">
				<li><a href="#" style="background-color: blue; color: #fff">首页</a></li>
				<li><a href="updatepassword.jsp">修改密码</a></li>
				<li><a href="update.jsp">修改信息</a></li>
				<li><a href="upload.jsp">文件上传</a></li>
				<li><a href="DocServlet?action=findAll">查看文件</a></li>
				<li><a href="download.jsp">文件下载</a></li>
				<li><a href="DocServlet?action=findByCount">下载排行</a></li>
				<li><a href="${contextPath}/user/login">退出</a></li>
			</ul>
		</div>
		<div class="right">
			<form action="DocServlet?action=findByUsername" method="post">
				输入查找的用户名:<input type="text" name="findusername" class="input_s" value="" />
				<input type="submit" value="查找">
			</form>
			<br>
		<!--  
			<form action="DocServlet?action=findById" method="post">
				输入查找的ID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="findid" class="input_s" value="" />
				<input type="submit" value="查找">
			</form>
			<br>
		-->
			<form action="DocServlet?action=findAll" method="post">
				<a>可以看到别人的文件</a>&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="共享文件" class="submit_s">
			</form>
			<br>
			<form action="DocServlet?action=findByUsername" method="post">
				<a>不可以看到别人的文件</a>&nbsp;&nbsp;<input type="submit" value="取消共享文件" class="submit_s">
			</form>
			<br>
			<br><br>
		</div>
		<div class="admin"
			style="text-align: center; color: #ffffff; padding-top: 10px">&copy;网盘管理数据库</div>
	</div>
</body>
</html>