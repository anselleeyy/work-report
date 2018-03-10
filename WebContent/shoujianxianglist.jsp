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

  </head>
  
  <body>
    <div id="bott1_1">
  	<div id="bott2">
  		<h2>未读汇报</h2>
  	</div>
  	<div id="bott4" style="margin-left: 80px;">
  		<form action="" method="post">
			<table id="subtree1" width="900px;" style="margin-left: auto;margin-right: auto;">
				<tr align="center">
					<td id="td" bgcolor="#63ebfb" width="8%">序号</td>
					<td id="td" bgcolor="#63ebfb" width="10%">类型</td>
					<td id="td" bgcolor="#63ebfb" width="10%">周期</td>
					<td id="td" bgcolor="#63ebfb" width="20%">日期</td>
					<td id="td" bgcolor="#63ebfb" width="20%">部门</td>
					<td id="td" bgcolor="#63ebfb" width="15%">发件人</td>
					<td id="td" bgcolor="#63ebfb" width="17%" style="border-right: thin dashed gray;">操作</td>
				</tr>
				<s:iterator value="wfhbs" status="status" var="info">
				<tr align="center">
					<td id="td">
						<s:property value="#status.count"/>
					</td>
					<s:if test="ty==0">
					<td id="td">
						周报
					</td>
					</s:if>
					<s:if test="ty==1">
					<td id="td">
						月报
					</td>
					</s:if>
					<s:if test="ty==2">
					<td id="td">
						年报
					</td>
					</s:if>
					<s:if test="ty==0">
					<td id="td">
						第<s:property value="zyys"/>周
					</td>
					</s:if>
					<s:if test="ty==1">
					<td id="td">
						<s:property value="zyys"/>月
					</td>
					</s:if>
					<s:if test="ty==2">
					<td id="td">
						<s:property value="zyys"/>年
					</td>
					</s:if>
					<td id="td">
						<s:property value="rq"/>
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
					<td style="border-bottom: thin dashed gray;"></td>
					<td style="border-bottom: thin dashed gray;"></td>
				</tr>
			</table>
		</form>
  	</div>
  </div>
  </body>
</html>
