<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>修改信息</title>
</head>
<body align="center">
<p align="right"><a href="success.jsp">主界面</a></p>
	<h2 align="center">信息修改</h2>
	<form action="updateSucceed.jsp" method="post">
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
			<td colspan="2" align="center"><input type="submit" name=update value="确定" >
			<input type="reset" name=refill value="重填" ></td>
			
			</tr>
		</table>
			
		</form>	
</body>