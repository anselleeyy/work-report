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
		function qingkong(){
			var inputObj = document.getElementById("inp_userName");
			if(inputObj.value=="请输入工号"){
				inputObj.value="";
				var us = document.getElementById("u_p");
				us.innerHTML = "请输入工号";
			}
		}
		function likai(){
			var inputObj = document.getElementById("inp_userName");
			var us = document.getElementById("u_p");
			var reg = /[ ]+/g;
			var str = inputObj.value;
			var str1 = str.replace(reg,"");
			if(str1==""){
				inputObj.value="请输入工号";
				us.innerHTML = "";
				return false;
			}else{
				inputObj.value=str1;
				us.innerHTML = "";
				return true;
			}
		}
		function qk(){
			var inputObj = document.getElementById("inp_pswd");
			if(inputObj.value=="请输入密码"){
				inputObj.value="";
				inputObj.type="password";
				var us = document.getElementById("p_p");
				us.innerHTML = "请输入密码";
			}
		}
		function lk(){
			var inputObj = document.getElementById("inp_pswd");
			var us = document.getElementById("p_p");
			if(inputObj.value==""){
				inputObj.type="text";
				inputObj.value="请输入密码";
				us.innerHTML = "";
				return false;
			}
			us.innerHTML = "";
			return true;
		}
	</script>
  </head>
  
  <body>
    	<div id="top"></div>
    	<div class="wrap">
			<div class="pic">
				<a style="display:block;" href="#">
					<img src="./image/a1.jpg"/>
				</a>
			</div>
			<form action="login" method="get">
				<div class="inp">
					<div class="inp_a">
					</div>
					<div class="inp_b">
						<span class="u"></span>
						<input id="inp_userName" class="inpu" type="text" name="user.gh" value="请输入工号" onfocus="qingkong()" onblur="likai()"/>
					</div>
					<div class="inp_c">
						<p id="u_p"></p>
					</div>
					<div class="inp_p">
						<span class="p"></span>
						<input id="inp_pswd" class="pswd" type="text" name="user.pwd" value="请输入密码" onfocus="qk()" onblur="lk()"/>
					</div>
					<!-- 密码提示框与登录错误提示共用一个。 -->
					<div class="inp_p_c">
						<p id="p_p" style="color: red;">${msg}</p>
					</div>
					<p class="btn">
						<input class="a" type="submit" value="登&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;录"/>
						<input class="a" type="button" value="忘记密码"/>
					</p>
				</div>
			</form>
		</div>
  </body>
</html>
