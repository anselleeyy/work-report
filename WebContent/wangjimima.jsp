<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>工作汇报系统</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="./css/login.css">
	<script type="text/javascript">
		function fh(){
			window.location = "login.jsp";
		}
	</script>
  </head>
  
  <body>
    	<div id="top"></div>
    	<div class="wrap">
			<div class="pic">
				<a style="display:block;" href="#">
					<img src="./image/a.jpg"/>
				</a>
			</div>
			<div class="inp">
				<div class="inp_a1">
					<div class="inp_b1" style="margin-top: 50px;">
						请联系DBA:
					</div>
					<div class="inp_c1" style="margin-top: 30px;">
						13524678910
					</div>
				</div>
				<p class="btn" style="margin-left: 78px;">
					<input class="a" type="button" onclick="fh()" value="返回登录"/>
				</p>
			</div>
		</div>
  </body>
</html>
