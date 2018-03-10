function f1() {
	WdatePicker({
		minDate : '%y-%M-{%d}',
		maxDate : '2050-10-01'
	});
}

function add_t1(a) {
	var tds = $(a).parent().parent().parent().parent().children();
	var xh = tds.eq(tds.length - 1).children().eq(0).text();
	var num = parseInt(xh) + 1;
	var new_tr = 
		$('<tr align="center">'+
				'<td id="td">'+num+'</td>'+
				'<td id="td">'+
					'<textarea name="cdtasks" style="resize:none; margin-top: 5px;" rows="1" cols="43"></textarea>'+
				'</td>'+
				'<td id="td">'+
					'<input name="xdrqs" id="d4311" class="Wdate" type="text" onFocus="f1();" style="height: 33px; width:175px; margin-top: 4px; font-size: 21px; "/>'+
				'</td>'+
	          	'<td id="td">'+
	          		'<input name="wcrqs" id="d4312" class="Wdate" type="text" onFocus="f1();" style="height: 33px; width:175px; margin-top: 4px; font-size: 21px;"/>'+
	          	'</td>'+
	          	'<td id="td" style="border-right: thin dashed gray;">'+
	          		'<div style="width: 40px;height: 20px;">'+
	          			'<a href="javascript:" onclick="add_t1(this);">增加</a>'+
	          		'</div>'+
	          		'<div style="margin-top: 3px; width: 40px;height: 20px;">'+
						'<a href="javascript:" onClick="del_t1(this);">删除</a>'+
					'</div>'+
	          	'</td>'+
		'</tr>');
	$("#n1").append(new_tr);
}

function del_t1(a) {
	$(a).parent().parent().parent().remove();
	var tds = $("#n1").children();
	for (var i = 1; i <= tds.length - 1; i++) {
		tds.eq(i).children().eq(0).text(i);
	}
}
/*
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
					'<s:iterator value="user" status="status" var="user">'+
						'<option value="<s:property value="#user.userName"/>">'+
							'<s:property value="#user.userName"/>'+
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
*/
function del_t2(a) {
	$(a).parent().parent().parent().remove();
	var tds = $("#n2").children();
	for (var i = 1; i <= tds.length - 1; i++) {
		tds.eq(i).children().eq(0).text(i);
	}
}

function add_t3(a) {
	var tds = $(a).parent().parent().parent().parent().children();
	var xh = tds.eq(tds.length-1).children().eq(0).text();
	var num = parseInt(xh) + 1;
	var new_tr = 
		$('<tr align="center">'+
			'<td id="td">'+num+'</td>'+
			'<td id="td">'+
				'<textarea name="wtrenwu" style="resize:none; margin-top: 5px;" rows="1" cols="25"></textarea>'+
			'</td>'+
			'<td id="td">'+
				'<textarea name="wtwt" style="resize:none; margin-top: 5px;" rows="1" cols="25"></textarea>'+
			'</td>'+
			'<td id="td">'+
				'<textarea name="wtdc" style="resize:none; margin-top: 5px;" rows="1" cols="25"></textarea>'+
			'</td>'+
			'<td id="td" style="border-right: thin dashed gray;">'+
				'<div style="width: 40px;height: 20px;">'+
					'<a href="javascript:" onclick="add_t3(this);">增加</a>'+
				'</div>'+
				'<div style="margin-top: 3px; width: 40px;height: 20px;">'+
					'<a href="javascript:" onClick="del_t3(this);">删除</a>'+
				'</div>'+
			'</td>'+
		'</tr>');
	$("#n3").append(new_tr);
}

function del_t3(a) {
	$(a).parent().parent().parent().remove();
	var tds = $("#n3").children();
	for (var i = 1; i <= tds.length - 1; i++) {
		tds.eq(i).children().eq(0).text(i);
	}
}