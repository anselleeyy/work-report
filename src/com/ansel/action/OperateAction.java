package com.ansel.action;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import com.ansel.entity.BuMen;
import com.ansel.entity.User;
import com.ansel.util.ConnectionUtil;
import com.opensymphony.xwork2.ActionContext;

public class OperateAction {

	private User user;
	private BuMen bm;
	private List<BuMen> bms;
	private ConnectionUtil cUtil = new ConnectionUtil();
	private Map<String, Object> session = ActionContext.getContext().getSession();
	
	private String npwd;

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public BuMen getBm() {
		return bm;
	}

	public void setBm(BuMen bm) {
		this.bm = bm;
	}

	public List<BuMen> getBms() {
		return bms;
	}

	public void setBms(List<BuMen> bms) {
		this.bms = bms;
	}

	public String getNpwd() {
		return npwd;
	}

	public void setNpwd(String npwd) {
		this.npwd = npwd;
	}

	public String updateSelf() throws IOException {

		String username = session.get("name").toString();
		user = cUtil.getUserDao().findUserByName(username);
		
		return "success";
		
	}
	
	public String updateInfo() throws IOException {
		
		String username = session.get("name").toString();
		User user_old = cUtil.getUserDao().findUserByName(username);
		// 原密码不匹配
		if (!user_old.getPwd().equals(user.getPwd())) {
			return "error";
		}
		// 更新数据库
		if (npwd.equals("")) {
			cUtil.getUserDao().updateUserInfo(user.getPhone(), user_old.getPwd(), user_old.getId());
		} else {
			cUtil.getUserDao().updateUserInfo(user.getPhone(), npwd, user_old.getId());
		}
		
		return "success";
	}
	
	public String manageBumen() throws IOException {
		
		bms = cUtil.getBuMenDao().findAllBuMen();
		
		return "success";
	}
	
	public String deleteBumen() throws IOException {
		
		// 删除部门
		cUtil.getBuMenDao().deleteBuMenById(bm.getId());
		
		return "success";
	}
	
	public String updateBm() throws IOException {
		
		// 更新部门信息
		cUtil.getBuMenDao().updateBuMenNameById(bm.getId(), bm.getName());
		
		return "success";
	}
	
	public String addBumen() throws IOException {
		
		// 新增部门
		cUtil.getBuMenDao().insertBuMen(bm.getName());
		
		return "success";
	}

}
