package com.ansel.action;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.ansel.entity.BuMen;
import com.ansel.entity.HuiBao;
import com.ansel.entity.User;
import com.ansel.util.ConnectionUtil;
import com.ansel.util.EntityUtil;
import com.opensymphony.xwork2.ActionContext;

public class LoginAction {

	// f用来确定是从登录页面提交的登录请求，还是从主页的左侧页面提交的登录请求。
	public int f;
	public User user;
	public List<User> wfhbus;
	public String hbmesg;
	public Map<String, Object> session = ActionContext.getContext().getSession();

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getHbmesg() {
		return hbmesg;
	}

	public void setHbmesg(String hbmesg) {
		this.hbmesg = hbmesg;
	}

	public int getF() {
		return f;
	}

	public void setF(int f) {
		this.f = f;
	}

	public List<User> getWfhbus() {
		return wfhbus;
	}

	public void setWfhbus(List<User> wfhbus) {
		this.wfhbus = wfhbus;
	}
	
	ConnectionUtil cUtil = new ConnectionUtil();

	/**
	 * 拼接主页面上单个用户通讯录
	 * @throws IOException 
	 */
	private User pjyhtxl(User us) throws IOException {
		BuMen bm = cUtil.getBuMenDao().findById(us.getBm_id());
		us.setBm_name(bm.getName());
		return us;
	}

	/**
	 * 拼接主页面上所有用户通讯录
	 * @throws IOException 
	 */
	private List<User> pjyhtxl() throws IOException {
		// 得到数据库中的所有用户，拼接成页面上显示需要的用户信息
		List<User> users = cUtil.getUserDao().findAllUsers();
		for (int i = 0; i < users.size(); i++) {
			// 得到用户
			User user = users.get(i);
			// 拼接页面上需要显示的用户信息
			pjyhtxl(user);
		}
		return users;
	}

	// 登录方法
	public String login() throws IOException {
		// 当f为1时表示用户从登录页面提交登录请求
		if (f == 1) {
			return "success";
		}
		User us = cUtil.getUserDao().findByGh(user.getGh());
		if (us == null) {
			return "error";
		}
		if (user.userPwd.equals(us.getPwd())) {
			session.put("name", us.getUserName());
			session.put("pow", us.getPow());
			session.put("users", pjyhtxl());
			session.put("gh", user.getGh());
			// 自动更新当前用户上周期数据
			if (us.getPow() != 2) {
				// 自动更新周报
				updatewf(us, 0, EntityUtil.weekNum - 1);
				// 自动更新月报
				updatewf(us, 1, EntityUtil.parseMonth() - 1);
				// 自动更新年报
				updatewf(us, 2, EntityUtil.parseYear() - 1);
			}

			// 在exit中清空session
			// 上一周期未发汇报的员工
			session.put("wfhbus", wfhbus());

			return "success";
		}
		return "error";
	}

	private void updatewf(User user, int ty, int zyys) throws IOException {
		
		HuiBao hb = cUtil.getHuiBaoDao().findByUIDATYAZ(user.getId(), ty, zyys);
		if (hb == null) {
			// 表示上周期汇报未发
			hb = new HuiBao();
			hb.setTy(ty);
			String bm_name = cUtil.getBuMenDao().findById(user.getBm_id()).getName();
			hb.setBm_name(bm_name);
			String m_name = cUtil.getUserDao().findById(user.getManager_id()).getUserName();
			hb.setM_name(m_name);
			hb.setSt(0);
			hb.setUser_id(user.getId());
			hb.setZyys(zyys);
			cUtil.getHuiBaoDao().insertHuiBao(hb);
		}
		
	}

	private List<User> wfhbus() throws IOException {
		List<User> users = new ArrayList<User>();
		// 1、查出上周周报未发的员工
		// ty = 0,weekNum,st = 0
		// 可以用组合查询
		wf(0, EntityUtil.weekNum - 1, users);
		// 2、查出上月月报未发的员工
		wf(1, EntityUtil.parseMonth() - 1, users);
		// 3、查出上年年报未发的员工
		wf(2, EntityUtil.parseYear() - 1, users);
		return users;
	}

	private void wf(int ty, int zyys, List<User> users) throws IOException {
		List<HuiBao> hbs = cUtil.getHuiBaoDao().findWFHB(ty, zyys, 0);
		for (int i = 0; i < hbs.size(); i++) {
			User user = cUtil.getUserDao().findById(hbs.get(i).getUser_id());
			if (ty == 0) {
				user.setTy("周报");
			}
			if (ty == 1) {
				user.setTy("月报");
			}
			if (ty == 2) {
				user.setTy("年报");
			}
			user.setZyy(zyys);
			users.add(user);
		}
	}

	// 退出系统
	public String exit() {
		// 清空所有的session值即可
		session.put("name", null);
		session.put("pow", null);
		session.put("users", null);
		session.put("gh", null);
		return "success";
	}

	// 主页面上查询员工通讯录
	public String findygtxl() throws IOException {
		/*
		 * 执行效率慢，可提高执行效率。 1、查询出数据库中所有用户 2、用hbmesg分别和用户名、工号相比较
		 */
		// 需要查询出数据库中所有数据
		// 解决方案：从数据库中查询出指定数据
		// 难点：指定数据字段为name和gh。
		// List<User> users = UserDBUtil.findAllUsers();
		// 上面代码的高效率形式，执行效率贼高，但是有BUG。
		// List<User> users = (List<User>)session.get("users");
		User user = cUtil.getUserDao().findByNameorGh(hbmesg);
		if (user.getId() == 0) {
			session.put("users", null);
		} else {
			user = pjyhtxl(user);
			List<User> users = new ArrayList<User>();
			users.add(user);
			session.put("users", users);
		}
		return "success";
	}

	public String listwf() throws IOException {

		if (hbmesg.equals("请输入员工姓名或工号")) {
			session.put("wfhbus", wfhbus());
			return "success";
		}

		User user = cUtil.getUserDao().findByNameorGh(hbmesg);
		if (user.getId() == 0) {
			session.put("wfhbus", null);
		} else {
			List<HuiBao> hbs = cUtil.getHuiBaoDao().findHuiBaoByUserIdAndST(user.getId(), 0);
			List<User> users = new ArrayList<User>();
			for (int i = 0; i < hbs.size(); i++) {
				User us = new User();
				us.setUserName(user.getUserName());
				us.setGh(user.getGh());
				if (hbs.get(i).getTy() == 0) {
					us.setTy("周报");
				}
				if (hbs.get(i).getTy() == 1) {
					us.setTy("月报");
				}
				if (hbs.get(i).getTy() == 2) {
					us.setTy("年报");
				}
				us.setZyy(hbs.get(i).getZyys());
				users.add(us);
			}
			session.put("wfhbus", users);
		}
		return "success";
	}

}
