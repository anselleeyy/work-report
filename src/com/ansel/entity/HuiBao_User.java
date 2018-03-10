package com.ansel.entity;

public class HuiBao_User {
	
	public int hbId;
	public int hbType;
	public String hbDate;
	public int hbZyys;
	public String bmName;
	public String managerName;
	public String csRen;
	public int userId;
	public int hbState;
	
	public String userName;

	public int getId() {
		return hbId;
	}

	public void setId(int id) {
		this.hbId = id;
	}

	public int getTy() {
		return hbType;
	}

	public void setTy(int ty) {
		this.hbType = ty;
	}

	public String getRq() {
		return hbDate;
	}

	public void setRq(String rq) {
		this.hbDate = rq;
	}

	public int getZyys() {
		return hbZyys;
	}

	public void setZyys(int zyys) {
		this.hbZyys = zyys;
	}

	public String getBm_name() {
		return bmName;
	}

	public void setBm_name(String bm_name) {
		this.bmName = bm_name;
	}

	public String getM_name() {
		return managerName;
	}

	public void setM_name(String m_name) {
		this.managerName = m_name;
	}

	public String getCsren() {
		return csRen;
	}

	public void setCsren(String csren) {
		this.csRen = csren;
	}

	public int getUser_id() {
		return userId;
	}

	public void setUser_id(int user_id) {
		this.userId = user_id;
	}

	public int getSt() {
		return hbState;
	}

	public void setSt(int st) {
		this.hbState = st;
	}
	
	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}
	
	public String toString() {
		return "[hbType: " + hbType + ", hbDate: " + hbDate + ", hbZyys: " + hbZyys + ", bmName: " + bmName + ", managerName: " + managerName + ", csRen: " + csRen + ", userId: " + userId + ", hbState: " + hbState + ", userName: " + userName + "]"; 
	}

}
