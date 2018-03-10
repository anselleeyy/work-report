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
	<link rel="stylesheet" type="text/css" href="./css/list.css">
	<script type="text/javascript">
		function likai(){
			var inputObj = document.getElementById("inp");
			var us = document.getElementById("sp");
			var reg = /[ ]+/g;
			var str = inputObj.value;
			var str1 = str.replace(reg,"");
			if(str1==""){
				us.innerHTML = "请输入部门";
				return false;
			}else{
				inputObj.value=str1;
				us.innerHTML = "";
				return true;
			}
		}
		function sub1(){
			if (likai1()) {
				document.form1.action = "updatebm";
				document.form1.submit();
			}
		}
		
		function sub2(){
			if (likai()) {
				document.form2.action = "addbumen";
				document.form2.submit();
			}
		}
		function likai1(){
			var inputObj = document.getElementById("inp1");
			var us = document.getElementById("sp1");
			var reg = /[ ]+/g;
			var str = inputObj.value;
			var str1 = str.replace(reg,"");
			if(str1==""){
				us.innerHTML = "请输入新部门信息";
				return false;
			}else{
				inputObj.value=str1;
				us.innerHTML = "";
				return true;
			}
		}
		function sub(){
			return likai();
		}
	</script>
  </head>
  
  <body>
    <div id="bott1_1" style="width: 1000px;margin-left: 110px;">
  	<div id="bott2">
  		<h2>部门管理</h2>
  	</div>
  	<div id="bott4" style="margin-left: 40px;">
  		<form action="" method="post">
			<table id="subtree1" width="600px;" style="margin-left: auto;margin-right: auto;">
				<tr align="center">
					<td id="td" bgcolor="#63ebfb" width="30">序号</td>
					<td id="td" bgcolor="#63ebfb" width="40%">部门</td>
					<td id="td" bgcolor="#63ebfb" width="30%" style="border-right: thin dashed gray;">操作</td>
				</tr>
				<s:iterator value="bms" status="status" var="info">
				<tr align="center">
					<td id="td">
						<s:property value="#status.count"/>
					</td>
					<td id="td">
						<s:property value="name"/>
					</td>
					<td id="td" style="border-right: thin dashed gray;">
						<a href="
							<s:url action="deletebumen">
    							<s:param name="bm.id" value="#info.id"></s:param>
    						</s:url>
						">
    						<input type="button" class="inpu1" value='删除'/>
    					</a>
    					<a href="
    						<s:url action="managebumen">
    							<s:param name="bm.name" value="#info.name"></s:param>
    							<s:param name="bm.id" value="#info.id"></s:param>
    						</s:url>
    					">
    						<input type="button" class="inpu1" value='修改'/>
    					</a>
					
					</td>
				</tr>
				</s:iterator>
				<tr>
					<td style="border-bottom: thin dashed gray;"></td>
					<td style="border-bottom: thin dashed gray;"></td>
					<td style="border-bottom: thin dashed gray;"></td>
				</tr>
			</table>
		</form>
  	</div>
  	
  	<s:if test="bm.name!=null">
	  	<div style=" margin: 0 auto; margin-top: -10px; width: 550px; height: 45px;">
	  		<form action="" method="post" style="margin: 0 auto; width: 550px" name="form1" >
	  			<input type="hidden" value="${bm.id}" name="bm.id"/>
	  		您准备将原本<span style="color: blue;">&nbsp;&nbsp;${bm.name}&nbsp;&nbsp;</span>部门，
	  		修改为新部门<input id="inp1" type="text" name="bm.name" onblur="likai1()">&nbsp;&nbsp;
	    		<input type="text" class="inpu1" value="修改" onclick="sub1()"/><br>
	    		<span id="sp1" style="color: red;">${mes}</span>
	    	</form>
	  	</div>
  	</s:if>
  	
  	<div style="margin: 0 auto; width: 370px; height: 45px;">
  		<form action="" method="post" style="margin: 0 auto" name="form2">
	  		新增部门名：<input id="inp" type="text" name="bm.name" onblur="likai()">
	  		&nbsp;&nbsp;
	    	<input type="text" class="inpu1" value="添加" onclick="sub2()" /><br>
	    	<span id="sp" style="color: red;">${mes}</span>
    	</form>
  	</div>
  </div>
  </body>
</html>
