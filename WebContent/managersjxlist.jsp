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
	<meta http-equiv="keywords" content="keyword1, keyword2, keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="./css/managersjxlist.css">

  </head>
  
  <body>
  	<div id="bott1">
	  	<div id="bott2">
	  		<h2>未读周报</h2>
	  	</div>
  		<div id="bott3">
			<table id="subtree1" width="375px;" >
				<tr align="center">
					<td id="td" bgcolor="#63ebfb" width="10%">序号</td>
					<td id="td" bgcolor="#63ebfb" width="20%">周期</td>
					<td id="td" bgcolor="#63ebfb" width="26%">部门</td>
					<td id="td" bgcolor="#63ebfb" width="24%">发件人</td>
					<td id="td" bgcolor="#63ebfb" width="20%" style="border-right: thin dashed gray;">操作</td>
				</tr>
				<s:iterator value="wfzbs" status="status" var="info">
				<tr align="center">
					<td id="td">
						<s:property value="#status.count"/>
					</td>
					<td id="td">
						第<s:property value="zyys"/>周
					</td>
					<td id="td">
						<s:property value="bm_name"/>
					</td>
					<td id="td">
						<s:property value="userName"/>
					</td>
					<td id="td" style="border-right: thin dashed gray;" align="center">
						<!-- 允许管理员在任何周期批复当前周期之前的汇报。 -->
						<a href="
							<s:url action="pfhb">
								<s:param name="hb.hbId" value="#info.id"></s:param>
							</s:url>
						">
    						<input type="button" class="inpu1" value='批复'/>
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
  		</div>
  	</div>
  	<div id="bott1_1">
  	  	<div id="bott2">
	  		<h2>未读月报</h2>
	  	</div>
  		<div id="bott3">
			<table id="subtree1" width="375px;" style="margin-left: auto;margin-right: auto;">
				<tr align="center">
					<td id="td" bgcolor="#63ebfb" width="10%">序号</td>
					<td id="td" bgcolor="#63ebfb" width="20%">月份</td>
					<td id="td" bgcolor="#63ebfb" width="26%">部门</td>
					<td id="td" bgcolor="#63ebfb" width="24%">发件人</td>
					<td id="td" bgcolor="#63ebfb" width="20%" style="border-right: thin dashed gray;">操作</td>
				</tr>
				<s:iterator value="wfybs" status="status" var="info">
				<tr align="center">
					<td id="td">
						<s:property value="#status.count"/>
					</td>
					<td id="td">
						第<s:property value="zyys"/>月
					</td>
					<td id="td">
						<s:property value="bm_name"/>
					</td>
					<td id="td">
						<s:property value="userName"/>
					</td>
					<td id="td" style="border-right: thin dashed gray;" align="center">
						<!-- 允许管理员在任何周期批复当前周期之前的汇报。 -->
						<a href="
							<s:url action="pfhb">
								<s:param name="hb.hbId" value="#info.id"></s:param>
							</s:url>
						">
    						<input type="button" class="inpu1" value='批复'/>
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
  		</div>
  	</div>
  	<div id="bott1_2">
  	  	<div id="bott2">
	  		<h2>未读年报</h2>
	  	</div>
  		<div id="bott3">
			<table id="subtree1" width="375px;" style="margin-left: auto;margin-right: auto;">
				<tr align="center">
					<td id="td" bgcolor="#63ebfb" width="10%">序号</td>
					<td id="td" bgcolor="#63ebfb" width="20%">年度</td>
					<td id="td" bgcolor="#63ebfb" width="26%">部门</td>
					<td id="td" bgcolor="#63ebfb" width="24%">发件人</td>
					<td id="td" bgcolor="#63ebfb" width="20%" style="border-right: thin dashed gray;">操作</td>
				</tr>
				<s:iterator value="wfnbs" status="status" var="info">
				<tr align="center">
					<td id="td">
						<s:property value="#status.count"/>
					</td>
					<td id="td">
						<s:property value="zyys"/>年度
					</td>
					<td id="td">
						<s:property value="bm_name"/>
					</td>
					<td id="td">
						<s:property value="userName"/>
					</td>
					<td id="td" style="border-right: thin dashed gray;" align="center">
						<!-- 允许管理员在任何周期批复当前周期之前的汇报。 -->
						<a href="
							<s:url action="pfhb">
								<s:param name="hb.hbId" value="#info.id"></s:param>
							</s:url>
						">
    						<input type="button" class="inpu1" value='批复'/>
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
  		</div>
  	</div>
  </body>
</html>
