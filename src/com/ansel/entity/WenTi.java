package com.ansel.entity;

public class WenTi {

	public int wt_id;
	public String wt_cdtask;
	public String wt_zywt;
	public String wt_dcjjy;
	public int hbId;

	public int getId() {
		return wt_id;
	}

	public void setId(int id) {
		this.wt_id = id;
	}

	public String getCdtask() {
		return wt_cdtask;
	}

	public void setCdtask(String cdtask) {
		this.wt_cdtask = cdtask;
	}

	public String getZywt() {
		return wt_zywt;
	}

	public void setZywt(String zywt) {
		this.wt_zywt = zywt;
	}

	public String getDcjjy() {
		return wt_dcjjy;
	}

	public void setDcjjy(String dcjjy) {
		this.wt_dcjjy = dcjjy;
	}

	public int getHb_id() {
		return hbId;
	}

	public void setHb_id(int hb_id) {
		this.hbId = hb_id;
	}
	
	public String toString() {
		return "[wt_cdtask: " + wt_cdtask + ", wt_zywt: " + wt_zywt + ", wt_dcjjy: " + wt_dcjjy + ", hbId: " + hbId +"]";
	}

}
