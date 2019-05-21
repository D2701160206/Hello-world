<%@ page language="java" import="java.util.*,java.sql.*"
	pageEncoding="utf-8"%>
	<%@page import="java.*"%>
<%@page import="java.sql.*" %>
<%@page import="javax.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>用户展示界面</title>
<style>
        body{
            background: url(img/03.jpg);
            
             }
</style>
</head>
<body>
	<center>
		
		<h1>
			<a href="index.jsp">返回重新登录</a> <a href="success.jsp">返回主界面 </a>
		</h1>
		<br>
		<hr>
		<br>
		<br>
		<br>
		<%  
          
    String driver = "com.mysql.jdbc.Driver";  
    Class.forName(driver);
           
    String url = "jdbc:mysql://localhost:3306/user";  
    Connection conn=DriverManager.getConnection(url,"root","root");
    Statement statement = conn.createStatement();  
    String sql="select * from user_01";
    ResultSet rs = statement.executeQuery(sql);  
  
    rs=statement.executeQuery(sql);

%>
		<table border="2px">
			<tr bgcolor='skyblue'>
				<td>用户名</td>
				<td>密码</td>
				<td>性别</td>
				<td>年龄</td>
				<td>联 系 电 话</td>
			</tr>
			<%
        while(rs.next())
        {
            %>
			<tr>
				<td><%=rs.getString("name") %></td>
				<td><%=rs.getString("password") %></td>
				<td><%=rs.getString("sex")%></td>
				<td><%=rs.getString("age")%></td>
				<td><%=rs.getString("number")%></td>
			</tr>
			<%
        }
     %>
		</table>	
	</center>
</body>
</html>
