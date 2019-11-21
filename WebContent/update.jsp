<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改信息</title>
<link rel="stylesheet" type="text/css" href="${contextPath}/css/lore.css">
</head>
<body>
  <form action="${contextPath}/user/update" method="post">
   <div class="bg">
		<div class="box">
				<div id="tittle">
					<h2 align="center">修改信息</h2>
				</div>
				<p class="input_box">
					账户：<input id="uname" type="text" name="username" value=${username }>
				</p>
				<p class="input_box">
					电话：<input id="utelphone" type="text" name="newtel" value=${user.tel }>
				</p>
				<p class="input_box">
					邮箱：<input id="uemail" type="email" name="newemail" value=${user.email }>
				</p>
				<p class="input_box">
					备注：<input id="ubeizhu" type="text" name="newmemo" value=${user.memo }>
				</p>
				<div class="button">
				    <input type="submit" value="确定"/>
				</div>
		</div>
	  </div>
	</form>
</body>
</html>