package com.ansel.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class EntityUtil {
	// 周数
	public static int weekNum = Calendar.getInstance().get(Calendar.WEEK_OF_YEAR);

	// 解析当前时间
	public static String parseTime() {
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String time = df.format(new Date());
		return time;
	}

	public static String parseTimex() {
		SimpleDateFormat df = new SimpleDateFormat("yyyy年MM月dd日");
		String time = df.format(new Date());
		return time;
	}

	public static int parseMonth() {
		String[] strs = parseTime().split("-");
		int month = Integer.parseInt(strs[1]);
		return month;
	}

	public static int parseYear() {
		String[] strs = parseTime().split("-");
		int year = Integer.parseInt(strs[0]);
		return year;
	}

	public static void main(String[] args) throws ParseException {
		String t = parseTimex();
		System.out.println(t);
	}
}
