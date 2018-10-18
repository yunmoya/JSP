<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>跨页面消息传送（有乱码问题）</title>
    
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
  	<!-- 提交给getParameter会乱码，getParameter1解决乱码问题 -->
    <form action="getParameter1.jsp" method="post">
    	<table>
	    	<tr>
	    		<td>姓名</td>
	    		<td><input type="text" name = "name" value=""/></td>
	    	</tr>
	    	<tr>
	    		<td>城市</td>
	    		<td><input type="text" name="city" value=""/></td>
	    	</tr>
	    	<tr>
	    		<td><input type="submit" value="提交"/></td>
	    		<td><input type="reset" value="重置"/></td>
	    	</tr>
    	</table>
    </form>
  </body>
</html>
