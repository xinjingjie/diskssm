<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>register</title>
<link href="./Wopop_files/style_log.css" rel="stylesheet"
	type="text/css" />
<link rel="stylesheet" type="text/css" href="./Wopop_files/style.css" />
<link rel="stylesheet" type="text/css"
	href="./Wopop_files/userpanel.css" />
<link rel="stylesheet" type="text/css" href="./jquery.ui.all.css" />
<script type="text/javascript" src="js/Login_check.js"></script>
</head>

<body class="login">
	<form action="${pageContext.request.contextPath }/user/register" method="post">
		<div class="login_m">

			<div class="login_boder_register">

				<div class="login_padding" id="login_model">
					<h3 class="login_logo">网盘注册</h3>
					<h2>USERNAME</h2>
					<label> <input type="text" id="username"
						class="txt_input txt_input2"
						onfocus="if (value ==&#39;Your name&#39;){value =&#39;&#39;}"
						onblur="if (value ==&#39;&#39;){value=&#39;Your name&#39;}"
						name="username">
					</label>
					<h2>PASSWORD</h2>
					<label> <input type="password" id="userpwd"
						class="txt_input txt_input2"
						onfocus="if (value ==&#39;******&#39;){value =&#39;&#39;}"
						onblur="if (value ==&#39;&#39;){value=&#39;******&#39;}"
						name="password">
					</label>
					<h2>CONFIRM</h2>
					<label> <input type="password" id="repwd"
						class="txt_input txt_input2" onblur="checkRepwd()"
						onfocus="if (value ==&#39;******&#39;){value =&#39;&#39;}"
						onblur="if (value ==&#39;&#39;){value=&#39;******&#39;}"
						name="repassword">
					</label>
					<h2>TEL</h2>
					<label> <input type="text" name="tel" id="usertel"
						class="txt_input txt_input2" placeholder="输入电话号码">
					</label>
					<h2>EMAIL</h2>
					<label> <input type="text" name="email" id="userem"
						class="txt_input txt_input2" onblur="checkemail()"
						placeholder="输入E-Mail地址">
					</label>

					<div class="rem_sub">
						<div class="rem_sub_l">
							<input type="checkbox" name="checkbox" id="save_me"> <label
								for="checkbox"> 记住密码 </label>
						</div>
						<label> <input type="submit" class="sub_button"
							name="button" id="button" value="注册" style="opacity: 0.7;">
						</label>
					</div>
				</div>




				<!--login_padding  Sign up end-->
			</div>
			<!--login_boder end-->
		</div>
		<!--login_m end-->


	</form>
</body>
</html>