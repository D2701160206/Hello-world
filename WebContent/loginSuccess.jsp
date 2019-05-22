<%@page import="java.sql.*"%>
<%@page import="javax.sql.*"%>
<%@page import="javax.naming.*"%>
<%request.setCharacterEncoding("utf-8"); %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>判断登录</title>
<style>
        body{
            background: url(img/03.jpg);
             }
</style>
</head>
<body>
	<%
		
		Statement stmt =null;
		ResultSet rs = null;
		Connection con = null;
		String name = request.getParameter("name").trim();
		String password = request.getParameter("password").trim();
		try{
			
			 Class.forName("com.mysql.jdbc.Driver");
			 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/user","root","root");
			stmt = con.createStatement();
			rs=stmt.executeQuery("select * from user_01 where name='"+name+"'");
			if(rs.next()){
				rs=stmt.executeQuery("select * from user_01 where name='"+name+"' and password='"+password+"'");
				if(rs.next()){
					%>
							 <script type="text/javascript">  
     			window.location="success.jsp";  
     			</script>  
				
					<% 
					
				}else{
					out.print("密码输入错误！！！<br>"+"重新<a href=\"index.jsp\">登录</a>");
				}
			}else{
				out.print("<font color=red>"+name+"</font>用户不存在！！！<br>"+"请点击<a href=\"registered.jsp\">注册</a>");

				out.print("请点击<a href=\"index.jsp\">重新登录</a>");
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
	
	
<%
session.setAttribute("name", name);
session.setAttribute("password", password);
%> 

 

</body>
</html>