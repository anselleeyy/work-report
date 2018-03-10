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
  		<h2>待发月报</h2>
  	</div>
  	<div id="bott4">
  		<s:if test="hbs.size()!=0">
  		<form action="" method="post" name="form1">
  		
  			<!-- 隐藏数据 -->
	  		<input type="hidden" name="hb.id" value="0"/>
	  		<input type="hidden" name="hb.bm_name" value="${hb.bm_name}"/>
	  		<input type="hidden" name="hb.rq" value="${hb.rq}"/>
	  		<input type="hidden" name="hb.m_name" value="${hb.m_name}"/>
	  		<input type="hidden" name="hb.zyys" value="${hb.zyys}"/>
	  		<input type="hidden" name="hb.user_id" value="${hb.user_id}" />
  			
			<table id="subtree1" width="600px;" style="margin-left: auto;margin-right: auto;">
				<tr align="center">
					<td id="td" bgcolor="#63ebfb" width="10%">序号</td>
					<td id="td" bgcolor="#63ebfb" width="20%">周期</td>
					<td id="td" bgcolor="#63ebfb" width="25%">日期</td>
					<td id="td" bgcolor="#63ebfb" width="20%">收件人</td>
					<td id="td" bgcolor="#63ebfb" width="25%" style="border-right: thin dashed gray;">操作</td>
				</tr>
				<s:iterator value="hbs" status="status" var="info">
				<tr align="center">
					<td id="td">
						<s:property value="#status.count"/>
					</td>
					<td id="td">
						第<s:property value="#info.zyys"/>月
					</td>
					<td id="td">
						<s:property value="#info.rq"/>
					</td>
					<td id="td">
						<s:property value="#info.m_name"/>
					</td>
					<td id="td" style="border-right: thin dashed gray;" align="left">
						<div style="padding-left: 13px;">
							<!-- 两种获得服务器中对象属性的方法：#info.zyys和zyys。 -->
							<s:if test="#info.zyys==hb.zyys">
								<a style="color: blue;text-decoration: underline;" href="
									<s:url action="sendsavedhb">
										<s:param name="hb.hbId" value="%{#info.id}"></s:param>
										<s:param name="hb.hbType" value="%{#info.ty}"></s:param>
									</s:url>">
									发送
								</a>
								&nbsp;
								<a style="color: blue;text-decoration: underline;" href="
									<s:url action="edithb">
										<s:param name="hb.hbId" value="%{#info.id}"></s:param>
										<s:param name="hb.hbType" value="%{#info.ty}"></s:param>
									</s:url>">
									编辑
								</a>
								&nbsp;
								<a style="color: blue;text-decoration: underline;" href="
									<s:url action="deletehb">
	 									<s:param name="hb.hbId" value="%{#info.id}"></s:param>
	 									<s:param name="hb.hbType" value="%{#info.ty}"></s:param>
	    							</s:url>">
	    							删除
	    						</a>
							</s:if>
							<s:if test="#info.zyys!=hb.zyys">
								<!-- 汇报的状态，汇报是已经发送了还是待发送。0表示没有邮件，1表示已发送，2表示待发送。 -->
								<s:if test="st==2">
									<span style="color: red;">
										汇报过期&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									</span>
									<a style="color: blue;text-decoration: underline;" href="
	 									<s:url action="deletehb">
	 										<s:param name="hb.hbId" value="%{#info.id}"></s:param>
	 										<s:param name="hb.hbType" value="%{#info.ty}"></s:param>
	    								</s:url>">
	    								删除
	    							</a>
								</s:if>
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
	  				<h1>目前还没有待发月报。</h1>
	  			</div>
	  		</div>
		</s:if>
		
  	</div>
  </div>
  </body>
</html>
