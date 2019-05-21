<%@page import="java.sql.*"%>
<%@page import="javax.sql.*"%>
<%@page import="javax.naming.*"%>
<%request.setCharacterEncoding("utf-8"); %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta charset="UTF-8">
<title>判断登录</title>
<style>
 body,div,dl,dt,dd,ul,ol,li,h1,h2,h3,h4,h5,h6,pre,code,form,fieldset,legend,input,textarea,p,blockquote,th,td{
            margin:0;
            padding:0}
        body{
            background: url(img/img02.jpg) no-repeat;
            background-size:cover;
             text-align: center;
             }
             a{
             text-decoration:none;
             }
            .red{
            color: red;
        }
        .blue{
        color:blue;
        }
       
        .box{
        height:300px;
      
        }
        
        .box1{
        
        float:right;
        margin-top: 1px; 
        }
        .box2{
         width:100px;
         float:left;
          margin-top: 1px; 
        } 
   
</style>
</head>
<body>		
<%
String name=new String(session.getAttribute("name").toString().getBytes("ISO-8859-1"),"UTF-8");
%>

<div class="box1"><a href="index.jsp" class="blue">重新登录</a></div>
<div class="box2"><a href="showUser.jsp">查看信息</a></div>
<div class="box3" align="left"><a href="update.jsp">修改信息</a> </div>
<h1 align='center'>欢迎登陆用户管理系统</h1>
<p class="box4">
<%
out.print("欢迎"+name+"登陆") ;
%>
</p>
<div class="box"></div>
<div>
<p><a href="deledate.jsp" class="red">删除该用户</a>  </p>
</div>



</body>
</html>