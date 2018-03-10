<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>工作汇报</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="./js/jquery-1.11.1.js"></script>
	<link rel="stylesheet" type="text/css" href="./css/list.css">
	<script type="text/javascript">
		function pqingkong(){
			var inputObj = document.getElementById("ip");
			if(inputObj.value=="请输入手机号" || inputObj.value=="请重新输入手机号"){
				inputObj.value="";
			}
		}
		function plikai(){
			var inputObj = document.getElementById("ip");
			var warnmsg = document.getElementById("sme");
			var reg = /[ ]+/g;
			var str = inputObj.value;
			var str1 = str.replace(reg,"");
			if(str1==""||str1=="请输入手机号"){
				inputObj.value="请输入手机号";
				return false;
			}else{
				var reg1 = /^1[3|4|5|7|8][0-9]\d{8}$/;
				var f = reg1.test(str1);
				if(f){
					inputObj.value=str1;
					return true;
				}
				if(!f){
					warnmsg.innerHTML = "手机号码格式有误，请重新输入";
					inputObj.value="请重新输入手机号";
					return false;
				}
				return true;
			}
		}
		function ylikai(){
			var inputObj = document.getElementById("iy").value;
			var str = document.getElementById("sme");
			if(inputObj==""){
				str.innerHTML = "原始密码不能为空";
				return false;
			}else{
				return true;
			}
		}
		function mlikai(){
			var inputObj = document.getElementById("im").value;
			if(inputObj==""){
				return false;
			}else{
				return true;
			}
		}
		function sub1(){
			
			var str = document.getElementById("sme");
			
			if ((plikai()||mlikai()) && ylikai() == true) {
				str.innerHTML = "";
				document.form1.action = "updateinfo";
				document.form1.submit();
			};
		}
		
	</script>
  </head>
  
  <body>
    <div id="bott1_1" style="width: 1000px;margin-left: 110px;">
  	<div style="margin:0 auto;margin-left:40px;width:910px;height:100px;">
  		<div id="bott2">
	  		<h2 style="text-align: center">修改</h2>
	  	</div>
	  	<form action="" method="post" name="form1">
  		<table id="subtree1" width="600px;" style="margin-left: auto;margin-right: auto;">
			<tbody id="n1">
			<tr align="center">
				<td id="td" bgcolor="#63ebfb" width="16%">姓名</td>
				<td id="td" bgcolor="#63ebfb" width="30%">手机号</td>
				<td id="td" bgcolor="#63ebfb" width="20%">原始密码</td>
				<td id="td" bgcolor="#63ebfb" width="20%">新密码</td>
				<td id="td" bgcolor="#63ebfb" width="14%" style="border-right: thin dashed gray;">操作</td>
			</tr>
			<tr align="center">
				<td id="td">
					${sessionScope.name}
				</td>
				<td id="td">
					<input id="ip" type="text" style="width: 150px;height: 25px;font-size: 15px;" name="user.phone" value="${user.phone}" onfocus="pqingkong()" onblur="plikai()"/>
				</td>
				<td id="td">
					<input id="iy" type="password" style="width: 100px;height: 25px;font-size: 15px;" name="user.pwd" onblur="ylikai()"/>
				</td>
				<td id="td">
					<input id="im" type="password" style="width: 100px;height: 25px;font-size: 15px;" name="npwd" onblur="mlikai()"/>
				</td>
				<td id="td" style="border-right: thin dashed gray;">
					<input class="inpu1" style="margin-left: 0px;margin-top: 0px;" type="text" value="确定" onclick="sub1()"/>
				</td>
			</tr>
			</tbody>
			<tr>
				<td style="border-bottom: thin dashed gray;"></td>
				<td style="border-bottom: thin dashed gray;"></td>
				<td style="border-bottom: thin dashed gray;"></td>
				<td style="border-bottom: thin dashed gray;"></td>
				<td style="border-bottom: thin dashed gray;"></td>
			</tr>
		</table>
    	</form>
    	<div style="width: 250px;height: 20px;margin: 0 auto;margin-top:-10px;">
			<span id="sme" style="color: red;">${mes}</span>
		</div>
  	</div>
  </div>
  </body>
</html>
