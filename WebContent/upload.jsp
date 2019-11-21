<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form id="fileupload" action="DocServlet?action=add" method="post"enctype="multipart/form-data">
		<input type="file" name="file"style="margin-left: 15px; margin-top: 15px;" /> <br /> <br/>
		<input type="submit" value="提交" class="submit_s" style="margin-left: 50px;"/> <br>
	</form>
</body>
</html>