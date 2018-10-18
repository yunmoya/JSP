<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>验证登录</title>
    
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
    <%!
    	//声明一个用户集合，模拟从数据库中取出用户集
    	Map<String,String> map = new HashMap<String,String>();
    	//声明验证的标识
    	boolean flag = false;
    
     %>
     <%!
     	//声明一个方法判断用户名和密码是否匹配(验证方法)
     	boolean validate(String username,String password){
     		String passwd = map.get(username);
     		if(passwd != null && passwd.equals(password))
     			return true;
     		else
     			return false;
     	}
      %>
      <%
      	//向集合中添加数据
      	map.put("zlj","zljsz");
      	map.put("John", "123456");
      	map.put("admin", "11111");
      	map.put("Smith", "222222");
      	map.put("Bob","3333333");
      	map.put("中文测试", "aoe");
       %>
       <%
       	request.setCharacterEncoding("utf-8");
       	String username = request.getParameter("username");
       	String password = request.getParameter("userpassword");
       	out.print(username);
       	if(username == null || password == null || username == "" || password == "")
       	{
       		response.sendRedirect("login.jsp");
       	}else
       	{
       		flag = validate(username,password);
       		if(flag){
       			//登录信息保存在session中
       			session.setAttribute("username", username);
       			session.setAttribute("password", password);
       			response.sendRedirect("class.jsp");
       		}else
       		{
       			String error = "用户名或密码不存在，请重新输入！";
       			session.setAttribute("error",error);
       			response.sendRedirect("login.jsp");
       		}
       	}
        %>
  </body>
</html>
