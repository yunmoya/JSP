<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'getParameter.jsp' starting page</title>
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
    <%
    	/*解决乱码问题法1*/
    	/*request.setCharacterEncoding("utf-8");//解决乱码问题法1
    	String name = request.getParameter("name");
    	String city = request.getParameter("city");*/
    	/*解决乱码问题2*/
    	String name = new String(request.getParameter("name").getBytes("ISO-8859-1"),"utf-8");
    	String city = new String(request.getParameter("city").getBytes("ISO-8859-1"),"utf-8");
    	if(name != null && city != null)
    	{
    %>
    		<p>Welcome <%=name %>,您所在的城市是<%=city %></p>
    <%	
    	}else
    	{
    %>
    		<p>欢迎访问本界面！</p>	
    <% 
    	}
    	
     %>
  </body>
</html>
