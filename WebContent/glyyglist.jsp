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
		function likai(){
			var inputObj = document.getElementById("inphone");
			var us = document.getElementById("phonemes");
			//先去空
			var reg = /[ ]+/g;
			var str = inputObj.value;
			var str1 = str.replace(reg,"");
			if(str1==""){
				us.innerHTML = "请正确输入手机号";
				return false;
			}else{
				var reg1 = /^1[3|4|5|7|8][0-9]\d{8}$/;
				var f = reg1.test(str1);
				if(f){
					inputObj.value=str1;
					us.innerHTML = "";
					return true;
				}
				if(!f){
					us.innerHTML = "请正确输入手机号";
					return false;
				}
			}
		}
		function sub(){
			return likai();
		}
		
		function nqingkong(){
			var inputObj = document.getElementById("in");
			if(inputObj.value=="请输入姓名"){
				inputObj.value="";
			}
		}
		function nlikai(){
			var inputObj = document.getElementById("in");
			var reg = /[ ]+/g;
			var str = inputObj.value;
			var str1 = str.replace(reg,"");
			if(str1==""||str1=="请输入姓名"){
				inputObj.value="请输入姓名";
				return false;
			}else{
				inputObj.value=str1;
				return true;
			}
		}
		function pqingkong(){
			var inputObj = document.getElementById("ip");
			if(inputObj.value=="请输入手机号"){
				inputObj.value="";
			}
		}
		function plikai(){
			var inputObj = document.getElementById("ip");
			var reg = /[ ]+/g;
			var str = inputObj.value;
			var str1 = str.replace(reg,"");
			if(str1==""||str1=="请输入手机号"){
				inputObj.value="请输入手机号";
				return false;
			}else{
				inputObj.value=str1;
				return true;
			}
		}
		function sub1(){
			return nlikai()&&plikai();
		}
		
	</script>
  </head>
  
  <body>
    <div id="bott1_1" style="width: 1000px;margin-left: 110px;">
  	<div id="bott2">
  		<h2>员工管理</h2>
  	</div>
  	<div id="bott4" style="margin-left: 40px;">
  		<form action="" method="post">
			<table id="subtree1" width="800px;" style="margin-left: auto;margin-right: auto;">
				<tr align="center">
					<td id="td" bgcolor="#63ebfb" width="10%">序号</td>
					<td id="td" bgcolor="#63ebfb" width="20%">部门</td>
					<td id="td" bgcolor="#63ebfb" width="15%">权限</td>
					<td id="td" bgcolor="#63ebfb" width="20%">姓名</td>
					<td id="td" bgcolor="#63ebfb" width="35%" style="border-right: thin dashed gray;">操作</td>
				</tr>
				<s:iterator value="users" status="status" var="info">
				<tr align="center">
					<td id="td">
						<s:property value="#status.count"/>
					</td>
					<td id="td">
						<s:property value="bm_name"/>
					</td>
					<td id="td">
						<s:property value="powstr"/>
					</td>
					<td id="td">
						<s:property value="name"/>
					</td>
					<td id="td" style="border-right: thin dashed gray;">
						<a href="javaScript:">
    						<input type="button" class="inpu1" value='删除'/>
    					</a>
    					&nbsp;&nbsp;
    					<a href="javaScript:">
    						<input type="button" class="inpu1" value='修改'/>
    					</a>
						&nbsp;&nbsp;
    					<a href="javaScript:">
    						<input type="button" class="inpu1" value='授权'/>
    					</a>
					</td>
				</tr>
				</s:iterator>
				<tr>
					<td style="border-bottom: thin dashed gray;"></td>
					<td style="border-bottom: thin dashed gray;"></td>
					<td style="border-bottom: thin dashed gray;"></td>
					<td style="border-bottom: thin dashed gray;"></td>
					<td style="border-bottom: thin dashed gray;"></td>
				</tr>
			</table>
		</form>
  	</div>
  	<!-- 管理员的修改 -->
  	<s:if test="f!=0">
  	<div id="bott4" style="margin-left: 40px;height: 140px;">
	  	<div id="bott2">
	  		<h2>修改</h2>
	  	</div>
  		<form action="upuser" method="post">
  			<input type="hidden" value="${user.id}" name="user.id"/>
			<table id="subtree1" width="750px;" style="margin-left: auto;margin-right: auto;">
				<tr align="center">
					<td id="td" bgcolor="#63ebfb" width="10%">姓名</td>
					<td id="td" bgcolor="#63ebfb" width="14%">工号</td>
					<td id="td" bgcolor="#63ebfb" width="19%">手机号</td>
					<td id="td" bgcolor="#63ebfb" width="25%">部门</td>
					<td id="td" bgcolor="#63ebfb" width="16%">领导</td>
					<td id="td" bgcolor="#63ebfb" width="16%" style="border-right: thin dashed gray;">操作</td>
				</tr>
				<tr align="center">
					<td id="td">
						<s:property value="user.name"/>
					</td>
					<td id="td">
						<s:property value="user.gh"/>
					</td>
					<td id="td">
						<input id="inphone" type="text" name="user.phone" value="${user.phone}" style="font-size: 15px;width: 120px;" onblur="likai()"/>
					</td>
					<td id="td">
						<select name="bmname">
							<s:iterator value="bms" status="status" var = "info">
							<option value="<s:property value="#info.name"/>">
								<s:property value="#info.name"/>
							</option>
							</s:iterator>
						</select>
					</td>
					<td id="td">
						<select name="ldname">
							<s:iterator value="lds" status="status" var = "info">
								<option value="<s:property value="#info.name"/>">
									<s:property value="#info.name"/>
								</option>
							</s:iterator>
						</select>
					</td>
					<td id="td" style="border-right: thin dashed gray;">
    					<input type="submit" class="inpu1" value='确定'/>
					</td>
				</tr>
				<tr>
					<td style="border-bottom: thin dashed gray;"></td>
					<td style="border-bottom: thin dashed gray;"></td>
					<td style="border-bottom: thin dashed gray;"></td>
					<td style="border-bottom: thin dashed gray;"></td>
					<td style="border-bottom: thin dashed gray;"></td>
					<td style="border-bottom: thin dashed gray;"></td>
				</tr>
			</table>
		</form>
		<div style="width: 150px;height: 20px;margin: 0 auto;margin-top:-10px;">
			<span id="phonemes" style="color: red;">${mes}</span>
		</div>
  	</div>
  	</s:if>
  	<!-- 管理员新增员工，超管不能新增员工。 -->
  	<div style="margin:0 auto;margin-left:40px;width:910px;height:100px;">
  		<div id="bott2">
	  		<h2>新增</h2>
	  	</div>
	  	<form action="adduser" method="post">
  		<table id="subtree1" width="650px;" style="margin-left: auto;margin-right: auto;">
			<tbody id="n1">
			<tr align="center">
				<td id="td" bgcolor="#63ebfb" width="20%">姓名</td>
				<td id="td" bgcolor="#63ebfb" width="30%">手机号</td>
				<td id="td" bgcolor="#63ebfb" width="20%">部门</td>
				<td id="td" bgcolor="#63ebfb" width="16%">领导</td>
				<td id="td" bgcolor="#63ebfb" width="14%" style="border-right: thin dashed gray;">操作</td>
			</tr>
			<tr align="center">
				<td id="td">
					<input id="in" type="text" style="width: 90px;height: 25px;font-size: 15px;" name="user.name" value="请输入姓名" onfocus="nqingkong()" onblur="nlikai()"/>
				</td>
				<td id="td">
					<input id="ip" type="text" style="width: 150px;height: 25px;font-size: 15px;" name="user.phone" value="请输入手机号" onfocus="pqingkong()" onblur="plikai()"/>
				</td>
				<td id="td">
					<select name="bmname">
						<s:iterator value="bms" status="status" var = "info">
							<option value="<s:property value="#info.name"/>">
								<s:property value="#info.name"/>
							</option>
						</s:iterator>
					</select>
				</td>
				<td id="td">
					<select name="ldname">
						<s:iterator value="lds" status="status" var = "info">
							<option value="<s:property value="#info.name"/>">
								<s:property value="#info.name"/>
							</option>
						</s:iterator>
					</select>
				</td>
				<td id="td" style="border-right: thin dashed gray;">
					<input class="inpu1" style="margin-left: 0px;margin-top: 0px;" type="submit" value="确定"/>
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
			<span id="sme" style="color: red;">${mes1}</span>
		</div>
  	</div>
  </div>
  </body>
</html>
