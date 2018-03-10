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
    
    <title>My JSP 'xinjian.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!-- 设置当前页面允许使用中文 -->
	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
	<link rel="stylesheet" type="text/css" href="./css/list.css">
	<script type="text/javascript" src="./js/jquery-1.11.1.js"></script>
	<script type="text/javascript" src="./js/My97DatePicker/WdatePicker.js"></script>
	<script type="text/javascript">
		function f1(){
			WdatePicker({minDate:'%y-%M-{%d}',maxDate:'2050-10-01'});
		}
		
		function suupload(param) {
			var b = "uploadsuperpf?hb.id="+param;
			document.form1.action = b;
    		document.form1.submit();
		}
		
		function upload(param) {
			var b = "uploadpf?hb.ty=2&hb.id="+param;
			document.form1.action = b;
    		document.form1.submit();
		}
	</script>
  </head>
  
  <body>
    <div id="bott1_1">
  	<div id="bott2">
  		<h2>员工年报</h2>
  	</div>
	<div id="bott3">
		<table width="1100px;">
	  		<tr>
	  			<td width="140px;"></td>
	  			<td width="70px;">当前状态:</td>
	  			<td width="400px;">&nbsp;&nbsp;批阅</td>
	  			<td width="90px;">批阅人:</td>
	  			<td width="400px;">${sessionScope.name}</td>
	  		</tr>
	  	</table>
	</div>
	<div id="bott4">
		<table id="subtree1" width="1100px;">
			<tr>
				<td id="td" width="16%" bgcolor="#63ebfb">公司</td>
				<td id="td" width="35%">&nbsp;&nbsp;芊芊股份有限公司</td>
				<td id="td" width="4%" bgcolor="#63ebfb">部门</td>
				<td id="td" width="45%" style="border-right: thin dashed gray;">&nbsp;&nbsp;${hbu.bm_name}</td>
			</tr>
			<tr>
				<td id="td" bgcolor="#63ebfb">发件人</td>
				<td id="td">&nbsp;&nbsp;${hbu.userName}</td>
				<td id="td" bgcolor="#63ebfb">日期</td>
				<td id="td" style="border-right: thin dashed gray;">&nbsp;&nbsp;${hbu.rq}</td>
			</tr>
			<tr>
				<td id="td" bgcolor="#63ebfb">汇报上级</td>
				<td id="td">&nbsp;&nbsp;${hbu.m_name}</td>
				<td id="td" bgcolor="#63ebfb">年份</td>
				<td id="td" style="border-right: thin dashed gray;">&nbsp;&nbsp;${hbu.zyys}年</td>
			</tr>
			<tr>
				<td id="td" bgcolor="#63ebfb">上年工作重点</td>
				<td id="td" style="border-right: thin dashed gray;" colspan="3">
					<table id="td_table">
						<tbody id="n">
							 <tr align="center">
							  	<td id="td" width="6%" bgcolor="#63ebfb">序号</td>
							  	<td id="td" width="74%" bgcolor="#63ebfb">承担的任务</td>
							  	<td id="td" width="20%" bgcolor="#63ebfb" style="border-right: thin dashed gray;">预计完成日期</td>
							  </tr>
							  <s:iterator value="pts" status="status" var="pts">
							  	  <tr align="center">
								   	<td id="td">
								  		<s:property value="#status.count"/>
									</td>
								  	<td id="td">
								  	<!-- textarea得到Action中的参数格式固定，只能这么写，不然前面会有很多空格。 -->
										<s:property value="#pts.cdtask"/>
									</td>
								  	<td id="td" style="border-right: thin dashed gray;  width: 615px;">
										<s:property value="#pts.wcrq"/>
									</td>
							  	</tr>
						  	</s:iterator>
						</tbody>
						<tr>
						  	<td style="border-bottom: thin dashed gray;"></td>
						  	<td style="border-bottom: thin dashed gray;"></td>
					 		<td style="border-bottom: thin dashed gray;"></td>
					  		<td style="border-bottom: thin dashed gray;"></td>
					  	</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td id="td" bgcolor="#63ebfb">本年主要工作总结</td>
				<td id="td" style="border-right: thin dashed gray;" colspan="3">
					<table id="td_table">
						<tbody id="n1">
							<tr align="center">
								<td id="td" width="4%" bgcolor="#63ebfb">序号</td>
								<td id="td" width="56%" bgcolor="#63ebfb">承担的任务</td>
								<td id="td" width="20%" bgcolor="#63ebfb">任务下达日期</td>
								<td id="td" width="20%" bgcolor="#63ebfb" style="border-right: thin dashed gray;">计划完成日期</td>
							</tr>
							<!-- s标签if判断取值不需要再特地使用<s:property value="#status.count"/>，直接#要取的值即可。 -->
							<s:iterator value="nowts" status="status" var="nowts">
								<tr align="center" style="font-size: 15px;">
								  	<td id="td">
								  		<s:property value="#status.count"/>
								  	</td>
								  	<td id="td">
										<s:property value="#nowts.cdtask"/>
									</td>
								  	<td id="td"  style="width: 500px">
										<s:property value='#nowts.xdrq'/>
									</td>
									<td id="td" style="border-right: thin dashed gray;">
										<s:property value='#nowts.wcrq'/>
									</td>
								</tr>
							</s:iterator>
						</tbody>
						<tr>
						  	<td style="border-bottom: thin dashed gray;"></td>
						  	<td style="border-bottom: thin dashed gray;"></td>
						  	<td style="border-bottom: thin dashed gray;"></td>
						  	<td style="border-bottom: thin dashed gray;"></td>
						  	<td style="border-bottom: thin dashed gray;"></td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td id="td" bgcolor="#63ebfb">下年计划工作重点</td>
				<td id="td" style="border-right: thin dashed gray;" colspan="3">
					<table id="td_table">
						<tbody id="n2">
							<tr align="center">
								<td id="td" width="6%" bgcolor="#63ebfb">序号</td>
								<td id="td" width="46%" bgcolor="#63ebfb">承担的任务</td>
								<td id="td" width="17%" bgcolor="#63ebfb">预计完成日期</td>
								<td id="td" width="8%" bgcolor="#63ebfb">责任人</td>
								<td id="td" width="8%" bgcolor="#63ebfb">协助部门</td>
								<td id="td" width="15%" bgcolor="#63ebfb" style="border-right: thin dashed gray;">备注</td>
							</tr>
							<!-- s标签if判断取值不需要再特地使用<s:property value="#status.count"/>，直接#要取的值即可。 -->
							<s:iterator value="nextts" status="status" var="nextts">
								<tr align="center" style="font-size: 14px">
									<td id="td">
										<s:property value="#status.count"/>
								 	</td>
								 	<td id="td">
										<s:property value="#nextts.cdtask"/>
									</td>
								  	<td id="td">
										<s:property value="#nextts.rq"/>
									</td>
									<td id="td">
										<s:property value="#nextts.zr"/>
									</td>
									<td id="td" style="width: 400px">
										<s:property value="#nextts.xtbm"/>
									</td>
									<td id="td" style="border-right: thin dashed gray;">
										<s:property value="#nextts.bz"/>
									</td>
								</tr>
							</s:iterator>
						</tbody>
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
				</td>
			</tr>
			<tr>
				<td id="td" style="border-bottom: thin dashed gray;" bgcolor="#63ebfb">存在的问题及合理化建议</td>
				<td id="td" style="border-bottom: thin dashed gray;border-right: thin dashed gray;" colspan="3">
					<table id="td_table">
						<tbody id="n3">
							<tr align="center">
								<td id="td" width="6%" bgcolor="#63ebfb">序号</td>
								<td id="td" width="36%" bgcolor="#63ebfb">承担的任务</td>
								<td id="td" width="29%" bgcolor="#63ebfb">主要问题</td>
								<td id="td" width="29%" bgcolor="#63ebfb" style="border-right: thin dashed gray;">对策及建议</td>
							</tr>
							<s:iterator value="wts" status="status" var="wts">
								<tr align="center" style="font-size: 15px;">
									<td id="td">
									  	<s:property value="#status.count"/>
									</td>
									<td id="td">
										<s:property value="#wts.cdtask"/>
									</td>
									<td id="td" style="width: 565px">
										<s:property value="#wts.zywt"/>
									</td>
									<td id="td" style="border-right: thin dashed gray;">
										<s:property value="#wts.dcjjy"/>
									</td>
								</tr>
							</s:iterator>
						</tbody>
						<tr>
							<td style="border-bottom: thin dashed gray;"></td>
							<td style="border-bottom: thin dashed gray;"></td>
							<td style="border-bottom: thin dashed gray;"></td>
							<td style="border-bottom: thin dashed gray;"></td>
							<td style="border-bottom: thin dashed gray;"></td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
			<form action="" method="post" name="form1">
				<!-- 隐藏数据区域 -->
		  		<input type="hidden" name="hb.hbId" value="${hbu.id}"/>
		  		<input type="hidden" name="hb.bm_name" value="${hbu.bm_name}"/>
		  		<input type="hidden" name="hb.rq" value="${hbu.rq}"/>
		  		<input type="hidden" name="hb.m_name" value="${hbu.m_name}"/>
		  		<input type="hidden" name="hb.zyys" value="${hbu.zyys}"/>
		  		<input type="hidden" name="hb.user_id" value="${hbu.user_id}" />
				<div style="width: 1100px;">
					<div style="width: 200px; margin: 0 auto;">
						<h2 style="text-align: center;">批文</h2>
					</div>
					<textarea rows="8" cols="170" name="pf.pw_content" style="resize:none; margin-left: auto; margin-right: auto; margin-top: -18px;"></textarea>
				</div>
				<div id="bott6">
					<table>
						<s:if test="#session.pow==1">
						<tr>
							<td>
								<a href="normalget?hb.ty=2">
									<input class="a" type="button" value="返&nbsp;&nbsp;&nbsp;&nbsp;回"/>
								</a>
							</td>
							<td>
								<input class="a" type="button" value="批&nbsp;&nbsp;&nbsp;&nbsp;阅" onclick="upload('$(hbu.id)')" />
							</td>
						</tr>
						</s:if>
						<s:if test="#session.pow==2">
						<tr>
							<td>
								<a href="superget">
									<input class="a" type="button" value="返&nbsp;&nbsp;&nbsp;&nbsp;回"/>
								</a>
							</td>
							<td>
								<input class="a" type="button" value="批&nbsp;&nbsp;&nbsp;&nbsp;阅" onclick="suupload('$(hbu.id)')" />
							</td>
						</tr>
						</s:if>
					</table>
				</div>
			</form>
	  	</div>
  	</div>
  </body>
</html>
