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
    
    <title>My JSP 'daifa.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="./css/yifa.css">
	<script type="text/javascript" src="./js/jquery-1.11.1.js"></script>
	<script type="text/javascript" src="./js/My97DatePicker/WdatePicker.js"></script>
	<script type="text/javascript" src="./js/xinjian.js"></script>
	<script type="text/javascript">
		function add_t2(a) {	
			var tds = $(a).parent().parent().parent().parent().children();
			var xh = tds.eq(tds.length - 1).children().eq(0).text();
			var num = parseInt(xh) + 1;
			var new_tr = 
				$('<tr align="center">'+
					'<td id="td">'+num+'</td>'+
					'<td id="td">'+
						'<textarea name="nextTask" style="resize:none; margin-top: 5px;" rows="1" cols="33"></textarea>'+
					'</td>'+
					'<td id="td">'+
						'<input name="nextwcDate" id="d4311" class="Wdate" type="text" onFocus="f1();" style="height: 33px; width:140px; margin-top: 4px; font-size: 21px; "/>'+
					'</td>'+
					'<td id="td">'+
						'<select name="nextzrren">'+
							'<s:iterator value="users" status="status" var="users">'+
								'<option value="<s:property value="#users.userName"/>">'+
									'<s:property value="#users.userName"/>'+
								'</option>'+
							'</s:iterator>'+
						'</select>'+
					'</td>'+
					'<td id="td">'+
						'<select name="nextczbm">'+
							'<s:iterator value="bms" status="status" var="bms">'+
								'<option value="<s:property value="#bms.name"/>">'+
									'<s:property value="#bms.name"/>'+
								'</option>'+
							'</s:iterator>'+
						'</select>'+
					'</td>'+
					'<td id="td">'+
						'<textarea name="nextbz" style="resize:none; margin-top: 5px;" rows="1" cols="12"></textarea>'+
					'</td>'+
					'<td id="td" style="border-right: thin dashed gray;">'+
						'<div style="width: 40px;height: 20px;">'+
							'<a href="javascript:" onclick="add_t2(this);">增加</a>'+
						'</div>'+
						'<div style="margin-top: 3px; width: 40px;height: 20px;">'+
							'<a href="javascript:" onClick="del_t2(this);">删除</a>'+
						'</div>'+
					'</td>'+
				'</tr>')
			$("#n2").append(new_tr);
		}
		function sasoldhb(a){
			var b = "sasoldhb?hb.ty=0&hb.st="+a;
			document.form1.action=b;
	    	document.form1.submit(); 
		}
	</script>
</head>
  
  <body>
    <div id="bott1_1">
  	<div id="bott2">
  		<h2>员工月报</h2>
  	</div>
  	<div id="bott3">
  		<table width="1100px;">
  			<tr>
  				<td width="140px;"></td>
  				<td width="70px;">当前状态:</td>
  				<td width="400px;">&nbsp;&nbsp;编辑</td>
  				<td width="90px;">当前处理人:</td>
  				<td width="400px;">${sessionScope.name}</td>
  			</tr>
  		</table>
  	</div>
  	<div id="bott4">
  		<form action="" method="post" name="form1">
  		
  			<!-- 隐藏数据区域 -->
	  		<input type="hidden" name="hb.id" value="${hb.id}"/>
	  		<input type="hidden" name="hb.bm_name" value="${hb.bm_name}"/>
	  		<input type="hidden" name="hb.rq" value="${hb.rq}"/>
	  		<input type="hidden" name="hb.m_name" value="${hb.m_name}"/>
	  		<input type="hidden" name="hb.zyys" value="${hb.zyys}"/>
	  		<input type="hidden" name="hb.user_id" value="${hb.user_id}" />
	  		
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
						  			<td id="td" width="4%" bgcolor="#63ebfb">序号</td>
						  			<td id="td" width="70%" bgcolor="#63ebfb">承担的任务</td>
						  			<td id="td" width="20%" bgcolor="#63ebfb" style="border-right: thin dashed gray;">预计完成日期</td>
						  		</tr>
						  		<s:iterator value="pts" status="status" var="pts">
						  			<tr align="center">
							  			<td id="td">
							  				<s:property value="#status.count"/>
										</td>
							  			<td id="td">
							  			<!-- textarea得到Action中的参数格式固定，只能这么写，不然前面会有很多空格。 -->
											<textarea name="precdt" disabled="disabled" style="resize:none; margin-top: 5px;" rows="1" cols="67"><s:property value="#pts.cdtask"/></textarea>
										</td>
							  			<td id="td" style="border-right: thin dashed gray;">
											<input name="prerq1" id="d4311" disabled="disabled" value="<s:property value="#pts.wcrq"/>" class="Wdate" type="text" onFocus="f1();" style="height: 33px; width:175px; margin-top: 4px; font-size: 21px; "/>
											<div style="display: none;">
												<input name="returnDate" disabled="disabled" id="d4312" class="Wdate" type="text" onFocus="f2();" style="height: 33px; width:175px; margin-top: 23px; font-size: 21px;"/>
											</div>
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
									<td id="td" width="50%" bgcolor="#63ebfb">承担的任务</td>
									<td id="td" width="20%" bgcolor="#63ebfb">任务下达日期</td>
									<td id="td" width="20%" bgcolor="#63ebfb">计划完成日期</td>
									<td id="td" width="6%" bgcolor="#63ebfb" style="border-right: thin dashed gray;">操作</td>
								</tr>
								<s:if test="nowts.size()==0">
									<tr align="center">
							  			<td id="td">
							  				1
							  			</td>
							  			<td id="td">
											<textarea name="nowTask" style="resize:none; margin-top: 5px;" rows="1" cols="43"></textarea>
										</td>
							  			<td id="td">
											<input name="nowxDate" id="d4311" class="Wdate" type="text" onFocus="f1();" style="height: 33px; width:175px; margin-top: 4px; font-size: 21px; "/>
										</td>
										<td id="td">
											<input name="nowwDate" id="d4312" class="Wdate" type="text" onFocus="f1();" style="height: 33px; width:175px; margin-top: 4px; font-size: 21px;"/>
										</td>
							  			<td id="td" style="border-right: thin dashed gray;">
								  			<div style="width: 40px;height: 20px;">
												<a href="javascript:" onclick="add_t1(this);">增加</a>
								  			</div>
										</td>
							  		</tr>
									</s:if>
									<s:elseif test="nowts.size()!=0">
									<s:iterator value="nowts" status="status" var="nowts">
										<s:if test="#status.count==1">
											<tr align="center">
									  			<td id="td">
									  				<s:property value="#status.count"/>
									  			</td>
									  			<td id="td">
													<textarea name="cdtasks" style="resize:none; margin-top: 5px;" rows="1" cols="43"><s:property value="#nowts.cdtask"/></textarea>
												</td>
									  			<td id="td">
													<input name="xdrqs" id="d4311" class="Wdate" type="text" onFocus="f1();" style="height: 33px; width:175px; margin-top: 4px; font-size: 21px;" value="<s:property value='#nowts.xdrq'/>"/>
												</td>
												<td id="td">
													<input name="wcrqs" id="d4312" class="Wdate" type="text" onFocus="f1();" style="height: 33px; width:175px; margin-top: 4px; font-size: 21px;" value="<s:property value='#nowts.wcrq'/>"/>
												</td>
									  			<td id="td" style="border-right: thin dashed gray;">
										  			<div style="width: 40px;height: 20px;">
														<a href="javascript:" onclick="add_t1(this);">增加</a>
										  			</div>
												</td>
									  		</tr>
								  		</s:if>
							  			<s:elseif test="#status.count!=1">
									  		<tr align="center">
			          							<td id="td"><s:property value="#status.count"/></td>
			          							<td id="td">
			          								<textarea name="cdtasks" style="resize:none; margin-top: 5px;" rows="1" cols="43"><s:property value="#nowts.cdtask"/></textarea>
			          							</td>
			          							<td id="td">
			          								<input name="xdrqs" id="d4311" class="Wdate" type="text" onFocus="f1();" style="height: 33px; width:175px; margin-top: 4px; font-size: 21px; " value="<s:property value='#nowts.xdrq'/>"/>
			          							</td>
							          			<td id="td">
							          				<input name="wcrqs" id="d4312" class="Wdate" type="text" onFocus="f1();" style="height: 33px; width:175px; margin-top: 4px; font-size: 21px;" value="<s:property value='#nowts.wcrq'/>"/>
							          			</td>
							          			<td id="td" style="border-right: thin dashed gray;">
							          				<div style="width: 40px;height: 20px;">
							          					<a href="javascript:" onclick="add_t1(this);">增加</a>
							          				</div>
							          				<div style="margin-top: 3px; width: 40px;height: 20px;">
														<a href="javascript:" onClick="del_t1(this);">删除</a>
													</div>
							          			</td>
			          						</tr>
	          							</s:elseif>
							  		</s:iterator>
							  	</s:elseif>
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
					<td id="td" bgcolor="#63ebfb">下月工作重点</td>
					<td id="td" style="border-right: thin dashed gray;" colspan="3">
						<table id="td_table">
							<tbody id="n2">
								<tr align="center">
									<td id="td" width="6%" bgcolor="#63ebfb">序号</td>
									<td id="td" width="40%" bgcolor="#63ebfb">承担的任务</td>
									<td id="td" width="20%" bgcolor="#63ebfb">预计完成日期</td>
									<td id="td" width="5%" bgcolor="#63ebfb">责任人</td>
									<td id="td" width="8%" bgcolor="#63ebfb">协助部门</td>
									<td id="td" width="15%" bgcolor="#63ebfb">备注</td>
									<td id="td" width="6%" bgcolor="#63ebfb" style="border-right: thin dashed gray;">操作</td>
								</tr>
								<s:if test="nextts.size()==0">
									<tr align="center">
							  			<td id="td">1</td>
							  			<td id="td">
											<textarea name="nextTask" style="resize:none; margin-top: 5px;" rows="1" cols="33"></textarea>
										</td>
							  			<td id="td">
											<input name="nextwcDate" id="d4311" class="Wdate" type="text" onFocus="f1();" style="height: 33px; width:140px; margin-top: 4px; font-size: 21px; "/>
										</td>
										<td id="td">
											<select name="nextzrren">
												<s:iterator value="users" status="status" var = "info">
												<option value="<s:property value="#info.name"/>">
													<s:property value="#info.name"/>
												</option>
												</s:iterator>
											</select>
										</td>
										<td id="td">
											<select name="nextczbm">
												<s:iterator value="bms" status="status" var = "info">
													<option value="<s:property value="#info.name"/>">
														<s:property value="#info.name"/>
													</option>
												</s:iterator>
											</select>
										</td>
										<td id="td">
											<textarea name="nextbz" style="resize:none; margin-top: 5px;" rows="1" cols="12"></textarea>
										</td>
							  			<td id="td" style="border-right: thin dashed gray;">
								  			<div style="width: 40px;height: 20px;">
												<a href="javascript:" onclick="add_t2(this);">增加</a>
								  			</div>
										</td>
							  		</tr>
									</s:if>
									<s:elseif test="nextts.size()!=0">
									<s:iterator value="nextts" status="status" var="nextts">
									<s:if test="#status.count==1">
										<tr align="center">
								  			<td id="td">
								  				<s:property value="#status.count"/>
								  			</td>
								  			<td id="td">
												<textarea name="nextTask" style="resize:none; margin-top: 5px;" rows="1" cols="33"><s:property value="#nextts.cdtask"/></textarea>
											</td>
								  			<td id="td">
												<input name="nextwcDate" id="d4311" class="Wdate" type="text" onFocus="f1();" style="height: 33px; width:140px; margin-top: 4px; font-size: 21px; " value="<s:property value="#nextts.rq"/>"/>
											</td>
											<td id="td">
												<select name="nextzrren">
													<s:iterator value="users" status="status" var = "info">
														<s:if test="#info.userName==#nextts.zr">
															<option value="<s:property value="#info.userName"/>" selected="selected">
																<s:property value="#info.userName"/>
															</option>
														</s:if>
														<s:elseif test="#info.userName!=#nextts.zr">															
															<option value="<s:property value="#info.userName"/>">
																<s:property value="#info.userName"/>
															</option>
														</s:elseif>
													</s:iterator>
												</select>
											</td>
											<td id="td">
												<select name="nextczbm">
													<s:iterator value="bms" status="status" var = "info">
														<s:if test="#info.name==#nextts.xtbm">
															<option value="<s:property value="#info.name"/>" selected="selected">
																<s:property value="#info.name"/>
															</option>
														</s:if>
														<s:elseif test="#info.name!=#nextts.xtbm">															
															<option value="<s:property value="#info.name"/>">
																<s:property value="#info.name"/>
															</option>
														</s:elseif>
													</s:iterator>
												</select>
											</td>
											<td id="td">
												<textarea name="nextbz" style="resize:none; margin-top: 5px;" rows="1" cols="12"><s:property value="#nextts.bz"/></textarea>
											</td>
								  			<td id="td" style="border-right: thin dashed gray;">
									  			<div style="width: 40px;height: 20px;">
													<a href="javascript:" onclick="add_t2(this);">增加</a>
									  			</div>
											</td>
								  		</tr>
							  		</s:if>
							  		<s:elseif test="#status.count!=1">
							  		<tr align="center">
							  			<td id="td">
							  				<s:property value="#status.count"/>
							  			</td>
							  			<td id="td">
											<textarea name="nextTask" style="resize:none; margin-top: 5px;" rows="1" cols="33"><s:property value="#nextts.cdtask"/></textarea>
										</td>
							  			<td id="td">
											<input name="nextwcDate" id="d4311" class="Wdate" type="text" onFocus="f1();" style="height: 33px; width:140px; margin-top: 4px; font-size: 21px; " value="<s:property value="#nextts.rq"/>"/>
										</td>
										<td id="td">
											<select name="nextzrren">
												<s:iterator value="users" status="status" var = "info">
													<s:if test="#info.userName==#nextts.zr">
														<option value="<s:property value="#info.userName"/>" selected="selected">
															<s:property value="#info.userName"/>
														</option>
													</s:if>
													<s:elseif test="#info.userName!=#nextts.zr">															
														<option value="<s:property value="#info.userName"/>">
															<s:property value="#info.userName"/>
														</option>
													</s:elseif>
												</s:iterator>
											</select>
										</td>
										<td id="td">
											<select name="nextczbm">
												<s:iterator value="bms" status="status" var = "info">
													<s:if test="#info.name==#nextts.xtbm">
														<option value="<s:property value="#info.name"/>" selected="selected">
															<s:property value="#info.name"/>
														</option>
													</s:if>
													<s:elseif test="#info.name!=#nextts.xtbm">															
														<option value="<s:property value="#info.name"/>">
															<s:property value="#info.name"/>
														</option>
													</s:elseif>
												</s:iterator>
											</select>
										</td>
										<td id="td">
											<textarea name="nextbz" style="resize:none; margin-top: 5px;" rows="1" cols="12"><s:property value="#nextts.bz"/></textarea>
										</td>
										<td id="td" style="border-right: thin dashed gray;">
						          			<div style="width: 40px;height: 20px;">
						          				<a href="javascript:" onclick="add_t2(this);">增加</a>
						          			</div>
						          			<div style="margin-top: 3px; width: 40px;height: 20px;">
													<a href="javascript:" onClick="del_t2(this);">删除</a>
											</div>
						          		</td>
							  		</tr>
	          						</s:elseif>
							  		</s:iterator>
							  		</s:elseif>
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
							<tbody>
								<tr align="center">
									<td id="td" width="4%" bgcolor="#63ebfb">序号</td>
									<td id="td" width="32%" bgcolor="#63ebfb">承担的任务</td>
									<td id="td" width="32%" bgcolor="#63ebfb">主要问题</td>
									<td id="td" width="32%" bgcolor="#63ebfb" style="border-right: thin dashed gray;">对策及建议</td>
								</tr>
								<s:if test="wts.size()==0">
										<tr align="center">
									  		<td id="td">1</td>
									  		<td id="td">
												<textarea name="wtrenwu" style="resize:none; margin-top: 5px;" rows="1" cols="25"></textarea>
											</td>
									  		<td id="td">
												<textarea name="wtwt" style="resize:none; margin-top: 5px;" rows="1" cols="25"></textarea>
											</td>
									  		<td id="td">
										  		<textarea name="wtdc" style="resize:none; margin-top: 5px;" rows="1" cols="25"></textarea>
											</td>
											<td id="td" style="border-right: thin dashed gray;">
										  		<div style="width: 40px;height: 20px;">
													<a href="javascript:" onclick="add_t3(this);">增加</a>
									  			</div>
											</td>
									  	</tr>
									</s:if>
									<s:elseif test="wts.size()!=0">
										<s:iterator value="wts" status="status" var="wts">
											<s:if test="#status.count==1">
												<tr align="center">
											  		<td id="td">
											  			<s:property value="#status.count"/>
											  		</td>
											  		<td id="td">
														<textarea name="wtrenwu" style="resize:none; margin-top: 5px;" rows="1" cols="25"><s:property value="#wts.cdtask"/></textarea>
													</td>
											  		<td id="td">
														<textarea name="wtwt" style="resize:none; margin-top: 5px;" rows="1" cols="25"><s:property value="#wts.zywt"/></textarea>
													</td>
											  		<td id="td">
												  		<textarea name="wtdc" style="resize:none; margin-top: 5px;" rows="1" cols="25"><s:property value="#wts.dcjjy"/></textarea>
													</td>
													<td id="td" style="border-right: thin dashed gray;">
												  		<div style="width: 40px;height: 20px;">
															<a href="javascript:" onclick="add_t3(this);">增加</a>
											  			</div>
													</td>
											  	</tr>
												</s:if>
												<s:elseif test="#status.count!=1">
												<tr align="center">
											  		<td id="td">
											  			<s:property value="#status.count"/>
											  		</td>
											  		<td id="td">
														<textarea name="wtrenwu" style="resize:none; margin-top: 5px;" rows="1" cols="25"><s:property value="#wts.cdtask"/></textarea>
													</td>
											  		<td id="td">
														<textarea name="wtwt" style="resize:none; margin-top: 5px;" rows="1" cols="25"><s:property value="#wts.zywt"/></textarea>
													</td>
											  		<td id="td">
												  		<textarea name="wtdc" style="resize:none; margin-top: 5px;" rows="1" cols="25"><s:property value="#wts.dcjjy"/></textarea>
													</td>
													<td id="td" style="border-right: thin dashed gray;">
														<div style="width: 40px;height: 20px;">
															<a href="javascript:" onclick="add_t3(this);">增加</a>
														</div>
														<div style="margin-top: 3px; width: 40px;height: 20px;">
															<a href="javascript:" onClick="del_t3(this);">删除</a>
														</div>
													</td>
											  	</tr>
											</s:elseif>
										</s:iterator>
									</s:elseif>
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
			<div id="bott6">
				<table style="margin-left: -10px;">
					<tr>
						<td>
							<input class="a" type="submit" value="登&nbsp;&nbsp;&nbsp;&nbsp;录" onclick="sasoldhb(1)" />
						</td>
						<td>
							<input class="a" type="submit" value="保&nbsp;&nbsp;&nbsp;&nbsp;存" onclick="sasoldhb(2)" />
						</td>
					</tr>
				</table>
			</div>
		</form>
  	</div>
  </div>
  </body>
</html>
