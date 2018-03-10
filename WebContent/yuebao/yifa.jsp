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
    
    <title>My JSP 'yifa.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="./css/list.css">
	<script type="text/javascript" src="./js/jquery-1.11.1.js"></script>
	<script type="text/javascript" src="./js/My97DatePicker/WdatePicker.js"></script>
	<script type="text/javascript">
		function list(idstr){
			var name1="subtree"+idstr;
			var name2="img"+idstr;
			var objectobj=document.all(name1);
			var imgobj=document.all(name2);
			if(objectobj.style.display=="none"){
				objectobj.style.display="";
				imgobj.src="image/ico03.gif";
			}else{
				objectobj.style.display="none";
				imgobj.src="image/ico04.gif";
			}
		}
	</script>
  </head>
  
  <body>
  <div id="bott1">
  	<div id="bott2">
  		<h2>员工月报</h2>
  	</div>
  	<div id="bott3">
  		<table width="1100px;">
  			<tr>
  				<td width="140px;"></td>
  				<td width="70px;">当前状态:</td>
  				<td width="400px;">&nbsp;&nbsp;已批阅</td>
  				<td width="90px;">当前处理人:</td>
  				<td width="400px;">${sessionScope.name}</td>
  			</tr>
  		</table>
  	</div>
  	<div id="bott4">
  		<div id="bott5">
  			<img name="img1" id="img1" src="image/ico03.gif" width="8" height="11" />
			<a href="javascript:" target="_self" onClick="list('1');">1.汇报内容</a>
  		</div>
		<table id="subtree1" width="1100px;">
			<tr>
				<td id="td" width="16%" bgcolor="#63ebfb">公司</td>
				<td id="td" width="35%">&nbsp;&nbsp;芊芊股份有限公司</td>
				<td id="td" width="4%" bgcolor="#63ebfb">部门</td>
				<td id="td" width="45%" style="border-right: thin dashed gray;">&nbsp;&nbsp;${hb.bm_name}</td>
			</tr>
			<tr>
				<td id="td" bgcolor="#63ebfb">姓名</td>
				<td id="td">&nbsp;&nbsp;${sessionScope.name}</td>
				<td id="td" bgcolor="#63ebfb">日期</td>
				<td id="td" style="border-right: thin dashed gray;">&nbsp;&nbsp;${hb.rq}</td>
			</tr>
			<tr>
				<td id="td" bgcolor="#63ebfb">汇报上级</td>
				<td id="td">&nbsp;&nbsp;${hb.m_name}</td>
				<td id="td" bgcolor="#63ebfb">月份</td>
				<td id="td" style="border-right: thin dashed gray;">&nbsp;&nbsp;第${hb.zyys}月</td>
			</tr>
			<tr>
				<td id="td" bgcolor="#63ebfb">上月工作重点</td>
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
								  	<td id="td" style="border-right: thin dashed gray; width: 615px;">
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
				<td id="td" bgcolor="#63ebfb">本月主要工作总结</td>
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
				  		</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td id="td" bgcolor="#63ebfb">下月工作重点</td>
				<td id="td" style="border-right: thin dashed gray;" colspan="3">
					<table id="td_table">
						<tbody id="n2">
							<tr align="center">
								<td id="td" width="6%" bgcolor="#63ebfb">序号</td>
								<td id="td" width="46%" bgcolor="#63ebfb">承担的任务</td>
								<td id="td" width="20%" bgcolor="#63ebfb">预计完成日期</td>
								<td id="td" width="5%" bgcolor="#63ebfb">责任人</td>
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
						</tr>
					</table>
				</td>
			</tr>
		</table>
		<div id="bott5">
  			<img name="img2" id="img2" src="image/ico03.gif" width="8" height="11" />
			<a href="javascript:" target="_self" onClick="list('2');">2.直接上级审批</a>
  		</div>
		<div id="subtree2">
			<table width="300px;">
				<tr>
					<td id="td" bgcolor="#63ebfb" width="100px;" align="center">职&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;位</td>
					<td id="td" bgcolor="#63ebfb" width="200px;" align="center" style="border-right: thin dashed gray;">姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名</td>
				</tr>
				<tr>
					<td id="td" align="center">${pf.pw_bmName}</td>
					<td id="td" align="center" style="border-right: thin dashed gray;">${pf.pw_name}</td>
				</tr>
				<tr>
					<td style="border-bottom: thin dashed gray;"></td>
					<td style="border-bottom: thin dashed gray;"></td>
				</tr>
			</table>
			<div style="width: 1100px;margin-top: 5px;">
				<div style="width: 45px;height:20px; margin-bottom:5px;">
					<span>批文</span>
				</div>
				<textarea rows="8" cols="112" disabled="disabled" style="resize:none;margin-left: 2px;">${pf.pw_content}</textarea>
			</div>
		</div>
	  	<div id="bott5">
  			<img name="img3" id="img3" src="image/ico03.gif" width="8" height="11" />
			<a href="javascript:" target="_self" onClick="list('3');">3.批阅</a>
  		</div>
	  	<table id="subtree3">
			<tr>
				<td id="td" bgcolor="#63ebfb" width="100px;" align="center">批阅时间</td>
				<td id="td" width="250px;" style="border-right: thin dashed gray;" align="center">
					${pf.pw_rq}
				</td>
			</tr>
			<tr>
				<td style="border-bottom: thin dashed gray;"></td>
				<td style="border-bottom: thin dashed gray;"></td>
			</tr>
		</table>
		<div id="bott6">
			<table style="margin-left: -10px;">
				<tr>
					<td>
						<a href="oldhb?hb.ty=1">
							<input class="a" type="button" value="返&nbsp;&nbsp;&nbsp;&nbsp;回"/>
						</a>
					</td>
					<td>
						<a href="
							<s:url action="deleteoldhb">
								<s:param name="hb.hbId" value="hb.id"></s:param>
		 						<s:param name="hb.hbType" value="hb.ty"></s:param>
							</s:url>
						">
							<input class="a" type="button" value="删&nbsp;&nbsp;&nbsp;&nbsp;除"/>
						</a>
					</td>
				</tr>
			</table>
		</div>
  	</div>
  	
  </div>
  </body>
</html>
