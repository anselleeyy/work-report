package com.ansel.entity;

public class NowTask {

	public int now_id;
	public String now_cdtask;
	public String now_xdrq;
	public String now_wcrq;
	public int hbId;

	public int getId() {
		return now_id;
	}

	public void setId(int id) {
		this.now_id = id;
	}

	public String getCdtask() {
		return now_cdtask;
	}

	public void setCdtask(String cdtask) {
		this.now_cdtask = cdtask;
	}

	public String getXdrq() {
		return now_xdrq;
	}

	public void setXdrq(String xdrq) {
		this.now_xdrq = xdrq;
	}

	public String getWcrq() {
		return now_wcrq;
	}

	public void setWcrq(String wcrq) {
		this.now_wcrq = wcrq;
	}

	public int getHb_id() {
		return hbId;
	}

	public void setHb_id(int hb_id) {
		this.hbId = hb_id;
	}
	
	public String toString() {
		return "[now_cdtask: " + now_cdtask + ", now_xdrq: " + now_xdrq + ", now_wcrq: " + now_wcrq + ", hbId: " + hbId +"]";
	}

}
