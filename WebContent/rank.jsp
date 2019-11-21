<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.sql.*,java.io.*,java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<form action="admin.jsp" method="post">
		<input type="submit" value="返回" class="submit_s" name="backup">
	</form>
	<br>
	
	<table border="1">
		<tr style="background-color: gray;">
			<th>ID</th>
			<th>Filename</th>
			<th>SavePath</th>
			<th>FileSize</th>
			<th>Catalog</th>
			<th>FileType</th>
			<th>Memo</th>
			<th>UserName</th>
			<th>UpLoaddate</th>
			<th>Count</th>
		</tr>
		<c:forEach items="${doc}" var="d">
			<tr>
				<td>${d.id }</td>
				<td>${d.filename }</td>
				<td>${d.savepath }</td>
				<td>${d.filesize }</td>
				<td>${d.catalog}</td>
				<td>${d.filetype}</td>
				<td>${d.memo}</td>
				<td>${d.username}</td>
				<td>${d.uploaddate}</td>
				<td>${d.count}</td>
			</tr>
  </c:forEach>
  </table>
</body>
</html>