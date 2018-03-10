<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>工作汇报系统</title>
    
  </head>
  
  <body bgcolor="#f6f9fb">
  	<div style="color: #787878;margin-left: 20px;margin-top:15px; font-size: 30px;">
       <span>工&nbsp;&nbsp;&nbsp;作&nbsp;&nbsp;&nbsp;汇&nbsp;&nbsp;&nbsp;报&nbsp;&nbsp;&nbsp;系&nbsp;&nbsp;&nbsp;统</span>
    </div>
  </body>
</html>
