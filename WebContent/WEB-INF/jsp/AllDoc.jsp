<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
									<td>
										<a href="${pageContext.request.contextPath }/doc/download/${d.filename }/">下载&nbsp;</a>
									</td>
								</tr>
							</c:forEach>
						</table>
						<a href="${contextPath}/user/back">返回</a>
</body>
</html>