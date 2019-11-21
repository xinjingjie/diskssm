<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8" />
<title>editpassword</title>
<link href="../../../Wopop_files/style_log.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="../../../Wopop_files/style.css" />
<link rel="stylesheet" type="text/css" href="../../../Wopop_files/userpanel.css" />
<link rel="stylesheet" type="text/css" href="../../../Wopop_files/jquery.ui.all.css" />

</head>

<body class="login" >
<form action="${contextPath}/user/update/${user.username}" method="post">
<div class="login_m">

<div class="login_boder_register">
   
<div class="login_padding" id="login_model">
<h3 class="login_logo">修改信息</h3>
  <h2>用户名</h2>
  <label>
    <input type="text" id="username" class="txt_input txt_input2" onfocus="if (value ==&#39;Your name&#39;){value =&#39;&#39;}" onblur="if (value ==&#39;&#39;){value=&#39;Your name&#39;}" value="${user.username}"  name="username">
  </label>
  <h2>电话</h2>
  <label>
    <input type="text" id="tel" class="txt_input txt_input2" onfocus="if (value ==&#39;******&#39;){value =&#39;&#39;}" onblur="if (value ==&#39;&#39;){value=&#39;******&#39;}"  value="${user.tel}" name="tel">
  </label>
 <h2>邮箱</h2>
  <label>
    <input type="text"   id="email" class="txt_input txt_input2" onfocus="if (value ==&#39;******&#39;){value =&#39;&#39;}" onblur="if (value ==&#39;&#39;){value=&#39;******&#39;}" value="${user.email}" name="email">
  </label>
<h2>备注</h2>
  <label>
    <input type="text"   id="memo" class="txt_input txt_input2" onfocus="if (value ==&#39;******&#39;){value =&#39;&#39;}" onblur="if (value ==&#39;&#39;){value=&#39;******&#39;}" value="${user.memo}" name="memo">
  </label>
  <div class="rem_sub">
  <div class="rem_sub_l">
  <input type="checkbox" name="checkbox" id="save_me">
   <label for="checkbox">记住密码</label>
   </div>
    <label>
      <input type="submit" class="sub_button" name="button" id="button" value="修改" style="opacity: 0.7;">
    </label>
  </div>
</div>




<!--login_padding  Sign up end-->
</div><!--login_boder end-->
</div><!--login_m end-->


</form>
</body></html>