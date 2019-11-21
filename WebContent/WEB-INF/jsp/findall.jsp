<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>AllUser</title>
<style type="text/css">
table {
	border: 5px #CCCCCC solid;
}

td, th {
	height: 30px;
	border: #CCCCCC 2px solid;
}
</style>
</head>
<body>
	<table>
		<tr>
			<td>username</td>
			<td>password</td>
			<td>memo</td>
			<td>tel</td>
			<td>email</td>
			<td>admin</td>
		</tr>
		<c:forEach items="${list }" var="user">
			<tr>
				<td>${user.username}</td>
				<td>${user.password}</td>
				<td>${user.memo }</td>
				<td>${user.tel }</td>
				<td>${user.email }</td>
				<td><a href="${contextPath}/user/delete/${user.username}">删除</a>&nbsp;<a
					href="${contextPath}/user/find/${user.username}/edituser">修改信息</a></td>
			</tr>
		</c:forEach>
	</table>
	<a href="${contextPath}/user/back">返回</a>
</body>
</html>