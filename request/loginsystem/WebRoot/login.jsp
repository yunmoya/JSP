<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>登录界面</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body>
    <center>
    	<h1>用户登录</h1>
    	<hr>
    	<form action="validate.jsp" method="post">
    		 <table>
    		<%
	    		String error = (String)session.getAttribute("error");
	    		if(error != null && !error.isEmpty())
	    		{
    		%>
    				<tr><%=error %></tr>
    		<% 
    			}
    		 %>
    		 	<tr>
    		 		<td>用户名称：</td>
    		 		<td><input type="text" name="username" value=""/></td>
    		 		<!-- 遇到错误1，无法验证为正确，因为没有添加value=""导致值一直为空 -->
    		 	</tr>
    		 	<tr>
    		 		<td>用户密码：</td>
    		 		<td><input type="password" name="userpassword" value=""/></td>
    		 	</tr>
    		 	<tr align="center">
    		 		<!-- <td></td> -->
    		 		<td><input type="submit" value="登录"/></td>
    		 	</tr>
    		 </table>
    	</form>
    </center>
  </body>
</html>
