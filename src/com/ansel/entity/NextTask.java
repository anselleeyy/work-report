package com.ansel.entity;

public class NextTask {

	public int next_id;
	public String next_cdtask;
	public String next_rq;
	public String next_zr;
	public String next_xtbm;
	public String next_bz;
	public int hbId;

	public int getId() {
		return next_id;
	}

	public void setId(int id) {
		this.next_id = id;
	}

	public String getCdtask() {
		return next_cdtask;
	}

	public void setCdtask(String cdtask) {
		this.next_cdtask = cdtask;
	}

	public String getRq() {
		return next_rq;
	}

	public void setRq(String rq) {
		this.next_rq = rq;
	}

	public String getZr() {
		return next_zr;
	}

	public void setZr(String zr) {
		this.next_zr = zr;
	}

	public String getXtbm() {
		return next_xtbm;
	}

	public void setXtbm(String xtbm) {
		this.next_xtbm = xtbm;
	}

	public String getBz() {
		return next_bz;
	}

	public void setBz(String bz) {
		this.next_bz = bz;
	}

	public int getHb_id() {
		return hbId;
	}

	public void setHb_id(int hb_id) {
		this.hbId = hb_id;
	}
	
	public String toString() {
		return "[next_cdtask: " + next_cdtask + ", next_rq: " + next_rq + ", next_zr: " + next_zr + ", next_xtbm: " + next_xtbm + ", next_bz: " + next_bz + ", hbId: " + hbId +"]";
	}
	
}
