package com.ansel.entity;

public class PiWen {

	public int pw_id;
	public String pw_content;
	public String pw_name;
	public String pw_bmName;
	public String pw_rq;
	public int hbId;

	public int getPw_id() {
		return pw_id;
	}

	public void setPw_id(int pw_id) {
		this.pw_id = pw_id;
	}

	public String getPw_content() {
		return pw_content;
	}

	public void setPw_content(String pw_content) {
		this.pw_content = pw_content;
	}

	public String getPw_name() {
		return pw_name;
	}

	public void setPw_name(String pw_name) {
		this.pw_name = pw_name;
	}

	public String getPw_bmName() {
		return pw_bmName;
	}

	public void setPw_bmName(String pw_bmName) {
		this.pw_bmName = pw_bmName;
	}

	public String getPw_rq() {
		return pw_rq;
	}

	public void setPw_rq(String pw_rq) {
		this.pw_rq = pw_rq;
	}

	public int getHbId() {
		return hbId;
	}

	public void setHbId(int hbId) {
		this.hbId = hbId;
	}
	
	@Override
	public String toString() {
		return "[pw_id: " + pw_id + ", pw_content: " + pw_content + ", pw_name: " + pw_name + ", pw_bmName: " + pw_bmName + ", pw_rq: " + pw_rq + ", hbId: " + hbId + "]";
	}

}
