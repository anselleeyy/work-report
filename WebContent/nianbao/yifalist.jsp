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
  		<h2>已发年报</h2>
  	</div>
  	<div id="bott4">
  		<s:if test="hbs.size()!=0">
  		<form action="" method="post">
			<table id="subtree1" width="800px;" style="margin-left: auto;margin-right: auto;">
				<tr align="center">
					<td id="td" bgcolor="#63ebfb" width="10%">序号</td>
					<td id="td" bgcolor="#63ebfb" width="15%">周期</td>
					<td id="td" bgcolor="#63ebfb" width="25%">日期</td>
					<td id="td" bgcolor="#63ebfb" width="20%">收件人</td>
					<td id="td" bgcolor="#63ebfb" width="30%" style="border-right: thin dashed gray;">操作</td>
				</tr>
				<s:iterator value="hbs" status="status" var="info">
				<tr align="center">
					<td id="td">
						<s:property value="#status.count"/>
					</td>
					<td id="td">
						<s:property value="#info.zyys"/>年度
					</td>
					<td id="td">
						<s:property value="#info.rq"/>
					</td>
					<td id="td">
						<s:property value="#info.m_name"/>
					</td>
					<td id="td" style="border-right: thin dashed gray;" align="left">
						<div style="padding-left: 13px;">
							<!-- 汇报的状态，汇报是已经发送了还是待发送。0表示没有邮件，1表示已发送，2表示待发送，3表示汇报已阅。 -->
							<s:if test="st==3">
							<div style="width:150px; margin: 0 auto;">
								已批阅。
								<a style="color: blue;text-decoration: underline;" href="
									<s:url action="reviewhb">
										<s:param name="hb.hbId" value="#info.id"></s:param>
										<s:param name="hb.hbType" value="#info.ty"></s:param>
									</s:url>">
									查看
								</a>
								&nbsp;
								<a style="color: blue;text-decoration: underline;" href="
									<s:url action="deleteoldhb">
										<s:param name="hb.hbId" value="#info.id"></s:param>
				 						<s:param name="hb.hbType" value="#info.ty"></s:param>
									</s:url>
								">
								删除
								</a>
							</div>
							</s:if>
							<s:if test="st==1">
								<!-- 汇报的状态，汇报是已经发送了还是待发送。0表示没有邮件，1表示已发送，2表示待发送。 -->
								<div style="width:110px; margin: auto; color: red;">
									汇报未批阅。
								</div>
							</s:if>
						</div>
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
		</s:if>
		<s:if test="hbs.size()==0">
		<div id="bott7">
  			<div id="bott10">
  				<h1>目前还没有已发年报。</h1>
  			</div>
  		</div>
		</s:if>
		
  	</div>
  </div>
  </body>
</html>
