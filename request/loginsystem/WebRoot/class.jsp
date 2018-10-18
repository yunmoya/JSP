<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'class.jsp' starting page</title>
    
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
    	<h2>班级管理</h2>
    	<hr>
    	<h3>学生</h3>
    	<table>
    		<tr>
    			<td><a href="addClass.jsp">班级录入</a></td>
    			<td><a href="modifyClass.jsp">班级修改</a></td>
    			<td><a href="queryClass.jsp">班级查询</a></td>
    			<td><a href="delClass.jsp">班级删除</a></td>
    		</tr>
    	</table>
    	<a href="logout.jsp">退出登录</a>
    </center>
  </body>
</html>
