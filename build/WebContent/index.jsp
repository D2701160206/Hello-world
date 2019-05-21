
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>用户登录页面</title>
<style>
        body{
            background:url(img/login.jpg) no-repeat;
            background-size:cover;
            }
       a{
            text-decoration:none;
            color: red;
        }
</style>
</head>
<body >
	<p align="right"><a href="registered.jsp" >注册</a></p>
	<h2 align="center"><font color=red>用户登录页面</font></h2>
	<form action="loginSuccess.jsp" method="post">
	<table align="center" border='2px'>
		<tr align="center">
			<td>用户名:</td>
			<td><input type="text" name="name" placeholder="输入用户名"></td>
		</tr>
		<tr align="center">
			<td>密&nbsp;&nbsp;码:</td>
			<td><input type="text" name="password" placeholder="输入密码"></td>
		</tr>
		<tr align="center">
			<td colspan="2"><input type="submit" value="登录" name="login">
			<input type="reset" value="重置" name="reset"></td>
			<!-- <td><input type="reset" value="重置" name="reset"></td> -->
		</tr>
	</table>
	<!-- <p align="center"><a href="registered.jsp" >注册用户</a></p> -->
	</form>
	
</body>
</html>