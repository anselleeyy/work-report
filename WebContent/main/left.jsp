<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=uft-8" />
		<title>工作汇报系统</title>
		<style type="text/css">
			body {
				margin-left: 0px;
				margin-top: 0px;
				margin-right: 0px;
				margin-bottom: 0px;
				background-image: url(../image/left.png);
				background-repeat: repeat-y;
			}
		</style>
		<link href="../css/css.css" rel="stylesheet" type="text/css" />
	</head>
	<base href="<%=basePath%>">
	<SCRIPT language=JavaScript>
		function tupian(idt){
    		var nametu="xiaotu"+idt;
    		var tp = document.getElementById(nametu);
    		tp.src="<%=basePath%>image/ico05.gif";//图片ico04为白色的正方形
			for(var i=1;i<14;i++){
	  			if(i!=idt*1){
	    			var tp2=document.getElementById('xiaotu'+i);
					if(tp2!=undefined){
						tp2.src="<%=basePath%>image/ico06.gif";
					}//图片ico06为蓝色的正方形
	  			}
			}
		}
		function list(idstr){
			var name1="subtree"+idstr;
			var name2="img"+idstr;
			var objectobj=document.all(name1);
			var imgobj=document.all(name2);
			if(objectobj.style.display=="none"){
				objectobj.style.display="";
				imgobj.src="<%=basePath%>image/ico03.gif";
			}else{
				objectobj.style.display="none";
				imgobj.src="<%=basePath%>image/ico04.gif";
			}
		}
	</SCRIPT>
	<body>
		<table width="198px;" border="0" cellpadding="0" cellspacing="0" class="left-table01">
			<tr>
				<TD>
				<!-- 欢迎头 -->
					<table width="100%" border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td width="207" height="55"
								background="<%=basePath%>image/nav01.gif">
								<table width="90%" border="0" align="center" cellpadding="0"
									cellspacing="0">
									<tr>
										<td width="25%" rowspan="2">
											<img src="<%=basePath%>image/ico02.gif" width="35"
												height="35" />
										</td>
										<td width="75%" height="22" class="left-font01">
											您好，
											<span class="left-font02">${sessionScope.name}。</span>
											<!-- 
											<input type="hidden" value="${stu}" name="stu">
											 -->
										</td>
									</tr>
									<tr>
										<td height="22" class="left-font01">
											[ <a href="login?f=1" target="_top" class="left-font01">首页</a> ]
											[ <a href="exit" target="_top" class="left-font01">退出</a> ]
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
					<!-- 欢迎结束 -->

					<!--  周报开始  -->
					<!-- 表示普通用户和管理员用户 -->
					<s:if test="#session.pow!=2">
					<TABLE width="100%" border="0" cellpadding="0" cellspacing="0"
						class="left-table03">
						<tr>
							<td height="29">
								<table width="85%" border="0" align="center" cellpadding="0"
									cellspacing="0">
									<tr>
										<td width="8%">
											<img name="img2" id="img2"
												src="<%=basePath%>image/ico04.gif" width="8" height="11" />
										</td>
										<td width="92%">
											<a href="javascript:" target="_self" class="left-font03"
												onClick="list('2');">周报</a>
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</TABLE>
					<table id="subtree2" style="DISPLAY: none" width="80%" border="0"
						align="center" cellpadding="0" cellspacing="0"
						class="left-table02">
						<tr>
							<td width="9%" height="20">
								<img id="xiaotu1" src="<%=basePath%>image/ico06.gif" width="8"
									height="12" />
							</td>
							<td width="91%">
								<a href="newhb?hb.ty=0" target="rightFrame" class="left-font03"
									onClick="tupian('1');">新建</a>
							</td>
						</tr>
						<tr>
							<td width="9%" height="20">
								<img id="xiaotu2" src="<%=basePath%>image/ico06.gif" width="8"
									height="12" />
							</td>
							<td width="91%">
								<a href="sendhb?hb.ty=0" target="rightFrame" class="left-font03"
									onClick="tupian('2');">待发</a>
							</td>
						</tr>
						<tr>
							<td width="9%" height="20">
								<img id="xiaotu3" src="<%=basePath%>image/ico06.gif" width="8"
									height="12" />
							</td>
							<td width="91%">
								<a href="oldhb?hb.ty=0" target="rightFrame" class="left-font03"
									onClick="tupian('3');">已发</a>
							</td>
						</tr>
						
						<!-- 表示管理员用户 -->
						<s:if test="#session.pow==1">
						<tr>
							<td width="9%" height="20">
								<img id="xiaotu4" src="<%=basePath%>image/ico06.gif" width="8"
									height="12" />
							</td>
							<td width="91%">
								<a href="normalget?hb.ty=0" target="rightFrame" class="left-font03"
									onClick="tupian('4');">收件箱</a>
							</td>
						</tr>
						</s:if>
					</table>
					
					<!--  周报结束    -->

					<!--  月报开始    -->
					<table width="100%" border="0" cellpadding="0" cellspacing="0"
						class="left-table03">
						<tr>
							<td height="29">
								<table width="85%" border="0" align="center" cellpadding="0"
									cellspacing="0">
									<tr>
										<td width="8%" height="12">
											<img name="img3" id="img3"
												src="<%=basePath%>image/ico04.gif" width="8" height="11" />
										</td>
										<td width="92%">
											<a href="javascript:" target="_self" class="left-font03"
												onClick="list('3');">月报</a>
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>

					<table id="subtree3" style="DISPLAY: none" width="80%" border="0"
						align="center" cellpadding="0" cellspacing="0"
						class="left-table02">
						<tr>
							<td width="9%" height="20">
								<img id="xiaotu5" src="<%=basePath%>image/ico06.gif" width="8"
									height="12" />
							</td>
							<td width="91%">
								<a href="newhb?hb.ty=1" target="rightFrame" class="left-font03"
									onClick="tupian('5');">新建</a>
							</td>
						</tr>
						<tr>
							<td width="9%" height="20">
								<img id="xiaotu6" src="<%=basePath%>image/ico06.gif" width="8"
									height="12" />
							</td>
							<td width="91%">
								<a href="sendhb?hb.ty=1" target="rightFrame" class="left-font03"
									onClick="tupian('6');">待发</a>
							</td>
						</tr>
						<tr>
							<td width="9%" height="20">
								<img id="xiaotu7" src="<%=basePath%>image/ico06.gif" width="8"
									height="12" />
							</td>
							<td width="91%">
								<a href="oldhb?hb.ty=1" target="rightFrame" class="left-font03"
									onClick="tupian('7');">已发</a>
							</td>
						</tr>
						
						<!-- 表示管理员用户 -->
						<s:if test="#session.pow==1">
						<tr>
							<td width="9%" height="20">
								<img id="xiaotu8" src="<%=basePath%>image/ico06.gif" width="8"
									height="12" />
							</td>
							<td width="91%">
								<a href="normalget?hb.ty=1" target="rightFrame" class="left-font03"
									onClick="tupian('8');">收件箱</a>
							</td>
						</tr>
						</s:if>
						
						
					</table>
					<!--  月报结束    -->

					<!--  年度汇报开始    -->
					<table width="100%" border="0" cellpadding="0" cellspacing="0"
						class="left-table03">
						<tr>
							<td height="29">
								<table width="85%" border="0" align="center" cellpadding="0"
									cellspacing="0">
									<tr>
										<td width="8%" height="12">
											<img name="img4" id="img4"
												src="<%=basePath%>image/ico04.gif" width="8" height="11" />
										</td>
										<td width="92%">
											<a href="javascript:" target="_self" class="left-font03"
												onClick="list('4');">年度汇报</a>
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>

					<table id="subtree4" style="DISPLAY: none" width="80%" border="0"
						align="center" cellpadding="0" cellspacing="0"
						class="left-table02">
						<tr>
							<td width="9%" height="20">
								<img id="xiaotu9" src="<%=basePath%>image/ico06.gif" width="8"
									height="12" />
							</td>
							<td width="91%">
								<a href="newhb?hb.ty=2" target="rightFrame" class="left-font03"
									onClick="tupian('9');">新建</a>
							</td>
						</tr>
						<tr>
							<td width="9%" height="20">
								<img id="xiaotu10" src="<%=basePath%>image/ico06.gif" width="8"
									height="12" />
							</td>
							<td width="91%">
								<a href="sendhb?hb.ty=2" target="rightFrame" class="left-font03"
									onClick="tupian('10');">待发</a>
							</td>
						</tr>
						<tr>
							<td width="9%" height="20">
								<img id="xiaotu11" src="<%=basePath%>image/ico06.gif" width="8"
									height="12" />
							</td>
							<td width="91%">
								<a href="oldhb?hb.ty=2" target="rightFrame" class="left-font03"
									onClick="tupian('11');">已发</a>
							</td>
						</tr>
						
						<!-- 表示管理员用户 -->
						<s:if test="#session.pow==1">
						<tr>
							<td width="9%" height="20">
								<img id="xiaotu12" src="<%=basePath%>image/ico06.gif" width="8"
									height="12" />
							</td>
							<td width="91%">
								<a href="normalget?hb.ty=2" target="rightFrame" class="left-font03"
									onClick="tupian('12');">收件箱</a>
							</td>
						</tr>
						</s:if>
					</table>
					</s:if>
					<!--  年度汇报结束    -->
					<!-- 管理员和超级管理员用户 -->
					<s:if test="#session.pow!=0">
						<TABLE width="100%" border="0" cellpadding="0" cellspacing="0"
							class="left-table03">
							<tr>
								<td height="29">
									<table width="85%" border="0" align="center" cellpadding="0"
										cellspacing="0">
										<tr>
											<td width="8%"></td>
											<td width="92%">
												<a href="javaScript:" target="rightFrame" class="left-font03">
													员工管理
												</a>
											</td>
										</tr>
									</table>
								</td>
							</tr>
						</TABLE>
					</s:if>
					
					
					<!-- 超级管理员用户 -->
					<s:if test="#session.pow==2">
						<TABLE width="100%" border="0" cellpadding="0" cellspacing="0"
							class="left-table03">
							<tr>
								<td height="29">
									<table width="85%" border="0" align="center" cellpadding="0"
										cellspacing="0">
										<tr>
											<td width="8%"></td>
											<td width="92%">
												<a href="managebumen" target="rightFrame" class="left-font03">
													部门管理
												</a>
											</td>
										</tr>
									</table>
								</td>
							</tr>
						</TABLE>
						<TABLE width="100%" border="0" cellpadding="0" cellspacing="0"
							class="left-table03">
							<tr>
								<td height="29">
									<table width="85%" border="0" align="center" cellpadding="0"
										cellspacing="0">
										<tr>
											<td width="8%"></td>
											<td width="92%">
												<a href="superget" target="rightFrame" class="left-font03">
													收件箱
												</a>
											</td>
										</tr>
									</table>
								</td>
							</tr>
						</TABLE>
					</s:if>
					
					<TABLE width="100%" border="0" cellpadding="0" cellspacing="0"
							class="left-table03">
							<tr>
								<td height="29">
									<table width="85%" border="0" align="center" cellpadding="0"
										cellspacing="0">
										<tr>
											<td width="8%"></td>
											<td width="92%">
												<a href="updateself" target="rightFrame" class="left-font03">
													修改信息
												</a>
											</td>
										</tr>
									</table>
								</td>
							</tr>
						</TABLE>
					
					
				</TD>
			</tr>
		</table>
	</body>
</html>
