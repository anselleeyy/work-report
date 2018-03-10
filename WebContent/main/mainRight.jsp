<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'right.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="./css/mainRight.css">
	<script type="text/javascript">
		function qingkong(id){
			var inputObj = document.getElementById(id);
			if(inputObj.value=="请输入员工姓名或工号"){
				inputObj.value="";
			}
		}
		function likai(id){
			var inputObj = document.getElementById(id);
			var reg = /[ ]+/g;
			var str = inputObj.value;
			var str1 = str.replace(reg,"");
			if(str1==""){
				inputObj.value="请输入员工姓名或工号";
				return false;
			}else{
				inputObj.value=str1;
				us.innerHTML = "";
				return true;
			}
		}
	</script>
  </head>
  
  <body>
    <div style="width: 500px;height: 680px;float: left;margin-left: 15px;margin-top: 20px;">
    	<div class="div1">
			上周期汇报未提交员工
		</div>
		<div class="div2">
			<form action="listwf" method="post">
				<input id="inpu_hb" name="hbmesg" type="text" class="inpu" value="请输入员工姓名或工号" onfocus="qingkong(id)" onblur="likai(id)"/>
				<div class="div3">
					<input type="submit" class="inpu1" value='查询'/>
				</div>
			</form>
		</div>
    	<table width="500px;" align="center" border="1px;">
    		<tr align="center" style="background-color: #d8d6d6;">
    			<td width="110px;">汇报类型</td>
    			<td width="50px;">序号</td>
    			<td width="100px;">周期</td>
    			<td width="110px;">姓名</td>
    			<td width="130px;">工号</td>
    			<s:if test="#session.pow==2">
    			<td width="130px;">操作</td>
    			</s:if>
    		</tr>
    		<s:iterator value="#session.wfhbus" status="status" var="wfhbus">
    		<s:if test="#wfhbus.ty!='月报'">
    		<tr align="center">
    			<td width="110px;">
    				<s:property value="#wfhbus.ty"/>
    			</td>
    			<td width="50px;">
    				<s:property value="#status.count"/>
    			</td>
    			<td width="100px;">
    				<s:property value="#wfhbus.zyy"/>
    			</td>
    			<td width="110px;">
    				<s:property value="#wfhbus.userName"/>
    			</td>
    			<td width="130px;">
    				<s:property value="#wfhbus.gh"/>
    			</td>
    			<s:if test="#session.pow==2">
    			<td width="130px;">
    				<a href="javaScript:">
    					<input type="button" class="inpu1" value='删除'/>
    				</a>
    			</td>
    			</s:if>
    		</tr>
    		</s:if>
    		<s:elseif test="#wfhbus.ty=='月报'">
    		<tr align="center" style="background-color: #baf4f8;">
    			<td width="110px;">
    				<s:property value="#wfhbus.ty"/>
    			</td>
    			<td width="50px;">
    				<s:property value="#status.count"/>
    			</td>
    			<td width="100px;">
    				<s:property value="#wfhbus.zyy"/>
    			</td>
    			<td width="110px;">
    				<s:property value="#wfhbus.userName"/>
    			</td>
    			<td width="130px;">
    				<s:property value="#wfhbus.gh"/>
    			</td>
    			<s:if test="#session.pow==2">
    			<td width="130px;">
    				<a href="javaScript:">
    					<input type="button" class="inpu1" value='删除'/>
    				</a>
    			</td>
    			</s:if>
    		</tr>
    		</s:elseif>
    		</s:iterator>
    		<s:if test="#session.pow==2">
    		<tr align="center" style="background-color: #baf4f8;">
    			<td width="350px;" colspan="6" align="center">
    				<a href="javaScript:">
    					<input type="submit" class="inpu1" style="width: 80px;" value='一键删除'/>
    				</a>
    			</td>
    		</tr>
    		</s:if>
    	</table>
    </div>
    <div style="width: 500px;height: 680px;float: left;margin-left: 25px;margin-top: 20px;">
		<div class="div1">
			员工通讯录
		</div>
		<div class="div2">
			<form action="listu" method="post">
				<input id="inpu_hb1" name="hbmesg" type="text" class="inpu" value="请输入员工姓名或工号" onfocus="qingkong(id)" onblur="likai(id)"/>
				<div class="div3">
					<input type="submit" class="inpu1" value='查询'/>
				</div>
			</form>
		</div>
    	<table width="500px;" align="center" border="1px;">
    		<tr align="center" style="background-color: #d8d6d6;">
    			<td width="50px;">序号</td>
    			<td width="110px;">部门</td>
    			<td width="110px;">姓名</td>
    			<td width="130px;">工号</td>
    			<td width="100px;">手机号码</td>
    		</tr>
    		<s:iterator value="#session.users" status="status" var="users">
    		<s:if test="#status.Even">
    		<tr align="center">
    			<td width="50px;">
    				<s:property value="#status.count"/>
    			</td>
    			<td width="100px;">
    				<s:property value="#users.bm_name"/>
    			</td>
    			<td width="100px;">
    				<s:property value="#users.userName"/>
    			</td>
    			<td width="100px;">
    				<s:property value="#users.gh"/>
    			</td>
    			<td width="150px;">
    				<s:property value="#users.phone"/>
    			</td>
    		</tr>
    		</s:if>
    		<s:elseif test="#status.Odd">
    		<tr align="center" style="background-color: #baf4f8;">
    			<td width="50px;">
    				<s:property value="#status.count"/>
    			</td>
    			<td width="100px;">
    				<s:property value="#users.bm_name"/>
    			</td>
    			<td width="100px;">
    				<s:property value="#users.userName"/>
    			</td>
    			<td width="100px;">
    				<s:property value="#users.gh"/>
    			</td>
    			<td width="150px;">
    				<s:property value="#users.phone"/>
    			</td>
    		</tr>
    		</s:elseif>
    		</s:iterator>
    	</table>
    </div>
  </body>
</html>
