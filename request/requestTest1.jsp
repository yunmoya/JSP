<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>同页面消息传送（无格式问题）</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <!-- 此种方法无乱码问题 -->
  <body>
    <form method="post">
    	文本1：<input type="text" name="text1"/><br/>
    	文本2：<input type="text" name="text2"/><br/>
    	文本3：<input type="text" name="text3"/><br/>
    	文本4：<input type="text" name="text4"/><br/>
    	<input type="submit" value="提交"/>
    </form>
    <%
    	Enumeration pNames = request.getParameterNames();
    	while(pNames.hasMoreElements()){
    		String pName = (String)pNames.nextElement();
    		String pValue = request.getParameter(pName);
    		if(pValue.contains("%"))
    		{
    			out.print("请求包含非法字符！");
    			break;
    		}
    	}
     %>
  </body>
</html>
