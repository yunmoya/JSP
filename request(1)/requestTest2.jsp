<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>request.getParameterValues()的使用</title>
    
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
    <p>这是食品柜台，请选择您要购买的食品：</p>
    <form action="" method="post" name="forml">
    	<input type="checkbox" name="choice" value="香肠"/>香肠
    	<input type="checkbox" name="choice" value="热狗"/>热狗
    	<input type="checkbox" name="choice" value="烤鸭"/>烤鸭
    	<input type="checkbox" name="choice" value="酸奶"/>酸奶
    	<br>
    	<input type="submit" value="提交"/>
    </form>
    <%
    	request.setCharacterEncoding("utf-8");
    	String food[]=request.getParameterValues("choice");
    	if(food != null)
    	{
    		for(int i = 0;i < food.length;i ++)
    			out.print(food[i]);
    	}
     %>
  </body>
</html>
