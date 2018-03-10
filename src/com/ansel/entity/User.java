package com.ansel.entity;

public class User {
	public int userId;
	public String userGh;
	public String userName;
	public String userPwd;
	public String userPhone;
	public int userPow;
	public int userManager_id;
	public int bmId;
	// 部门名称，这是在通讯录中使用的。
	public String bm_name;
	// 未发汇报员工中使用
	public String ty;
	public int zyy;

	public String getTy() {
		return ty;
	}

	public void setTy(String ty) {
		this.ty = ty;
	}

	public int getZyy() {
		return zyy;
	}

	public void setZyy(int zyy) {
		this.zyy = zyy;
	}

	public String getBm_name() {
		return bm_name;
	}

	public void setBm_name(String bm_name) {
		this.bm_name = bm_name;
	}

	public int getId() {
		return userId;
	}

	public void setId(int id) {
		this.userId = id;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPwd() {
		return userPwd;
	}

	public void setPwd(String pwd) {
		this.userPwd = pwd;
	}

	public String getGh() {
		return userGh;
	}

	public void setGh(String gh) {
		this.userGh = gh;
	}

	public String getPhone() {
		return userPhone;
	}

	public void setPhone(String phone) {
		this.userPhone = phone;
	}

	public int getPow() {
		return userPow;
	}

	public void setPow(int pow) {
		this.userPow = pow;
	}

	public int getManager_id() {
		return userManager_id;
	}

	public void setManager_id(int manager_id) {
		this.userManager_id = manager_id;
	}

	public int getBm_id() {
		return bmId;
	}

	public void setBm_id(int bm_id) {
		this.bmId = bm_id;
	}

	public String toString() {
		return "[userGh: " + userGh + ", userName: " + userName + ", userPwd: " + userPwd + ", userPhone: " + userPhone + ", userPow: " + userPow + ", userManager_id: " + userManager_id + ", bmId: " + bmId + "]";
	}
	
}
