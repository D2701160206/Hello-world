<%@page import="java.*"%>
<%@page import="java.sql.*"%>
<%@page import="javax.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>注册成功页面</title>
<style>
        body{
            background: url(img/img02.jpg);
            
             }
</style>
</head>
<body>
	<%
		
		Statement stmt =null;
		ResultSet rs = null;
		Connection con = null;
		
		String name=request.getParameter("name").replaceAll(" ","");
		String password=request.getParameter("password").replaceAll(" ","");
		String refill=request.getParameter("refill").replaceAll(" ","");
		String sex=request.getParameter("sex").replaceAll(" ","");
		String age=request.getParameter("age").replaceAll(" ","");
		String number=request.getParameter("number").replaceAll(" ","");
		try{
			
	    Class.forName("com.mysql.jdbc.Driver");
	    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/user","root","root");
		stmt = con.createStatement();
		if(name!=null){
			rs=stmt.executeQuery("select * from user_01 where name='"+name+"'");
			
			 if(rs.next()){
				out.print("用户已经存在  "+"请<a href=\"registered.jsp\">注册</a>");
			}else{
				if(password.equals(refill)){
	 				stmt.executeUpdate("insert into user_01 values('"+name+"','"+ password + "','"+ sex + "','"+ age + "','"+ number + "');");
				%>
	注册成功！！！
	<br> 三秒钟后自动转到登录页面！！！
	<br> 如果没有跳转，请点击
	<a href="index.jsp">这里</a>！！！
	<span style="font-size: 24px;"><meta http-equiv="refresh"
			content="0;URL=index.jsp"> </span>
	<% 
				}else{
				out.print("密码输入不一致!!!<br>"+"重新<a href=\"registered.jsp\">注册</a>");
				}
			}
			} else {
				out.print("姓名不能为空"+"重新<a href=\"registered.jsp\">注册</a>");
			}
		}catch(Exception e){
			out.print(e);
		}finally{
			if(rs!=null)
				rs.close();
			if(stmt!=null)
				stmt.close();
			if(con!=null)
				con.close();
		}
%>

</body>
</html>