<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>registered</title>
<style>
        body{
            background: url(img/img02.jpg);
            
             }
</style>
</head>
<body align="center">
<p align="right"><a href="index.jsp">登录</a></p>
	<h2 align="center">新用户注册</h2>
	<form action="registeredSucceed.jsp" method="post">
		<table align="center">
			<tr align="right">
		 		<td>请输入用户名:</td>
				<td><input type="text" name=name ></td>
			</tr>
			<tr align="right">
				<td>请输入密码:</td>
				<td><input type="text" name=password></td>
			</tr>
			<tr align="right">
				<td>请输入确认密码:</td>
				<td><input type="text" name=refill></td>
			</tr>
			<tr align="right">
				<td>请输入性别:</td>
				<td><input type="text" name=sex></td>
			</tr>
			<tr align="right">
				<td>请输入年龄:</td>
				<td><input type="text" name=age></td>
			</tr>
			<tr align="right">
				<td>请输入确认号码:</td>
				<td><input type="text" name=number></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" name=register value="注册" >
					<input type="reset" name=refill value="重填" >
				</td>
			</tr>
		</table>		
		</form>
	
</body>