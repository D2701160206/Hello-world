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
<title>删除用户信息</title>
</head>
<body>



 
	<%
		
		Statement stmt =null;
		ResultSet rs = null;
		Connection con = null;			
		
		try{			
	    Class.forName("com.mysql.jdbc.Driver");
	    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/user","root","root");
		stmt = con.createStatement();
		
				
	 				stmt.executeUpdate("delete from user_01 where name ='"+name1+"';");
				
				rs=stmt.executeQuery("select * from user_01 where name='"+name1+"'");
				 if(rs.next()){
						out.print("删除错误");
					}
				 else{	
					%> 
					删除成功！！！
						<br> 三秒钟后自动转到登录页面！！！
						<br> 如果没有跳转，请点击
						<a href="index.jsp">这里</a>！！！
						<span style="font-size: 24px;"><meta http-equiv="refresh"
								content="3;URL=index.jsp"> </span>
								<%
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