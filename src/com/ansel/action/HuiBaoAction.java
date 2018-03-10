package com.ansel.action;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import com.ansel.entity.BuMen;
import com.ansel.entity.HuiBao;
import com.ansel.entity.HuiBao_User;
import com.ansel.entity.PiWen;
import com.ansel.entity.NextTask;
import com.ansel.entity.User;
import com.ansel.entity.WenTi;
import com.ansel.entity.NowTask;
import com.ansel.util.ConnectionUtil;
import com.ansel.util.EntityUtil;
import com.opensymphony.xwork2.ActionContext;

public class HuiBaoAction {
	
	DateFormat dateFormat = new SimpleDateFormat("yyyy年MM月dd日");
	Date date = new Date();
	
	public HuiBao hb;
	public BuMen bm;
	public PiWen pf;
	public HuiBao_User hbu;
	public List<HuiBao> hbs;
	public List<NowTask> pts;
	public List<User> users;
	public List<BuMen> bms;
	
	// 编辑保存的汇报用
	public List<NowTask> nowts;
	public List<NextTask> nextts;
	public List<WenTi> wts;
	
	// 未读周报
	public List<HuiBao_User> wfzbs;
	// 未读月报
	public List<HuiBao_User> wfybs;
	// 未读年报
	public List<HuiBao_User> wfnbs;
	
	// 管理员使用的
	public List<HuiBao_User> wfhbs;

	// 本周期
	// 本周期承担任务
	public String[] cdtasks;
	// 本周期下达日期
	public String[] xdrqs;
	// 本周期完成日期
	public String[] wcrqs;
	
	// 下周期
	// 下周期承担任务
	public String[] nextTask;
	// 下周期预计完成日期
	public String[] nextwcDate;
	// 下周期责任人
	public String[] nextzrren;
	// 下周期协调部门
	public String[] nextczbm;
	// 下周期备注
	public String[] nextbz;
	
	// 存在的问题
	// 承担的任务
	public String[] wtrenwu;
	// 主要问题
	public String[] wtwt;
	// 对策
	public String[] wtdc;
	
	// 得到服务器存在session中的所有数据
	public Map<String, Object> session = ActionContext.getContext().getSession();

	public HuiBao getHb() {
		return hb;
	}

	public void setHb(HuiBao hb) {
		this.hb = hb;
	}

	public BuMen getBm() {
		return bm;
	}

	public void setBm(BuMen bm) {
		this.bm = bm;
	}

	public PiWen getPf() {
		return pf;
	}

	public void setPf(PiWen pf) {
		this.pf = pf;
	}

	public HuiBao_User getHbu() {
		return hbu;
	}

	public void setHbu(HuiBao_User hbu) {
		this.hbu = hbu;
	}

	public List<HuiBao> getHbs() {
		return hbs;
	}

	public void setHbs(List<HuiBao> hbs) {
		this.hbs = hbs;
	}
	
	public List<NowTask> getPts() {
		return pts;
	}

	public void setPts(List<NowTask> pts) {
		this.pts = pts;
	}

	public List<User> getUsers() {
		return users;
	}

	public void setUsers(List<User> users) {
		this.users = users;
	}

	public List<BuMen> getBms() {
		return bms;
	}

	public void setBms(List<BuMen> bms) {
		this.bms = bms;
	}

	public List<NowTask> getNowts() {
		return nowts;
	}

	public void setNowts(List<NowTask> nowts) {
		this.nowts = nowts;
	}

	public List<NextTask> getNextts() {
		return nextts;
	}

	public void setNextts(List<NextTask> nextts) {
		this.nextts = nextts;
	}

	public List<WenTi> getWts() {
		return wts;
	}

	public void setWts(List<WenTi> wts) {
		this.wts = wts;
	}

	public List<HuiBao_User> getWfzbs() {
		return wfzbs;
	}

	public void setWfzbs(List<HuiBao_User> wfzbs) {
		this.wfzbs = wfzbs;
	}

	public List<HuiBao_User> getWfybs() {
		return wfybs;
	}

	public void setWfybs(List<HuiBao_User> wfybs) {
		this.wfybs = wfybs;
	}

	public List<HuiBao_User> getWfnbs() {
		return wfnbs;
	}

	public void setWfnbs(List<HuiBao_User> wfnbs) {
		this.wfnbs = wfnbs;
	}

	public List<HuiBao_User> getWfhbs() {
		return wfhbs;
	}

	public void setWfhbs(List<HuiBao_User> wfhbs) {
		this.wfhbs = wfhbs;
	}

	public String[] getCdtasks() {
		return cdtasks;
	}
	
	public void setCdtasks(String[] cdtasks) {
		this.cdtasks = cdtasks;
	}
	
	public String[] getXdrqs() {
		return xdrqs;
	}
	
	public void setXdrqs(String[] xdrqs) {
		this.xdrqs = xdrqs;
	}
	
	public String[] getWcrqs() {
		return wcrqs;
	}
	
	public void setWcrqs(String[] wcrqs) {
		this.wcrqs = wcrqs;
	}
	
	public String[] getNextTask() {
		return nextTask;
	}

	public void setNextTask(String[] nextTask) {
		this.nextTask = nextTask;
	}

	public String[] getNextwcDate() {
		return nextwcDate;
	}

	public void setNextwcDate(String[] nextwcDate) {
		this.nextwcDate = nextwcDate;
	}

	public String[] getNextzrren() {
		return nextzrren;
	}

	public void setNextzrren(String[] nextzrren) {
		this.nextzrren = nextzrren;
	}

	public String[] getNextczbm() {
		return nextczbm;
	}

	public void setNextczbm(String[] nextczbm) {
		this.nextczbm = nextczbm;
	}

	public String[] getNextbz() {
		return nextbz;
	}

	public void setNextbz(String[] nextbz) {
		this.nextbz = nextbz;
	}
	
	public String[] getWtrenwu() {
		return wtrenwu;
	}

	public void setWtrenwu(String[] wtrenwu) {
		this.wtrenwu = wtrenwu;
	}

	public String[] getWtwt() {
		return wtwt;
	}

	public void setWtwt(String[] wtwt) {
		this.wtwt = wtwt;
	}

	public String[] getWtdc() {
		return wtdc;
	}

	public void setWtdc(String[] wtdc) {
		this.wtdc = wtdc;
	}

	ConnectionUtil cUtil = new ConnectionUtil();
	
	// 新建汇报
	public String newHb() throws IOException {
		
		// 得到所有用户名
		users = cUtil.getUserDao().findAllUsers();
		
		// 得到所有部门名
		bms = cUtil.getBuMenDao().findAllBuMen();
		
		String name = session.get("name").toString();
		// 根据用户名得到用户
		User user = cUtil.getUserDao().findUserByName(name);

		bm = cUtil.getBuMenDao().findById(user.getBm_id());

		// 汇报类型。0-周报；1-月报；2-年报
		hb.setBm_name(bm.getName());
		String time = EntityUtil.parseTimex();
		hb.setRq(time);
		hb.setUser_id(user.getId());
		User manager = cUtil.getUserDao().findById(user.getManager_id());
		hb.setM_name(manager.getUserName());
		
		// 周报
		if (hb.hbType == 0) {
			
			// 当前的周数
			hb.setZyys(EntityUtil.weekNum);
			
			// 获取上周数据
			// 获取上周汇报id
			HuiBao hBao = cUtil.getHuiBaoDao().findByUIDATYAZ(user.getId(), hb.getTy(), hb.getZyys()-1);
			if (hBao.getSt() == 2) {
				pts = new ArrayList<>();
			} else {
				pts = cUtil.getNowTaskDao().findByhbId(hBao.getId());				
			}
			
			// 验证该用户是否发送或保存过周报
			if (cUtil.getHuiBaoDao().findByUIDATYAZ(user.getId(), hb.getTy(), hb.getZyys()) != null) {
				hb = cUtil.getHuiBaoDao().findByUIDATYAZ(user.getId(), hb.getTy(), hb.getZyys());
			}
			return "zb";
		}
		
		// 月报
		else if (hb.hbType == 1) {
			
			// 当前的月份
			hb.setZyys(EntityUtil.parseMonth());
			
			// 获取上月数据
			// 获取上月汇报id
			HuiBao hBao = cUtil.getHuiBaoDao().findByUIDATYAZ(user.getId(), hb.getTy(), hb.getZyys()-1);
			if (hBao.getSt() == 2) {
				pts = new ArrayList<>();
			} else {
				pts = cUtil.getNowTaskDao().findByhbId(hBao.getId());				
			}
			
			// 验证该用户是否上交过月报
			if (cUtil.getHuiBaoDao().findByUIDATYAZ(user.getId(), hb.getTy(), hb.getZyys()) != null) {
				hb = cUtil.getHuiBaoDao().findByUIDATYAZ(user.getId(), hb.getTy(), hb.getZyys());
			}
			
			return "yb";
		}
		
		// 年报
		else if (hb.hbType == 2) {
			
			// 当前的年份
			hb.setZyys(EntityUtil.parseYear());
			
			// 获取上月数据
			// 获取上月汇报id
			HuiBao hBao = cUtil.getHuiBaoDao().findByUIDATYAZ(user.getId(), hb.getTy(), hb.getZyys()-1);
			if (hBao.getSt() == 2) {
				pts = new ArrayList<>();
			} else {
				pts = cUtil.getNowTaskDao().findByhbId(hBao.getId());				
			}
			
			// 验证该用户是否上交过年报
			if (cUtil.getHuiBaoDao().findByUIDATYAZ(user.getId(), hb.getTy(), hb.getZyys()) != null) {
				hb = cUtil.getHuiBaoDao().findByUIDATYAZ(user.getId(), hb.getTy(), hb.getZyys());
			}
			
			return "nb";
		}
		
		//不会真正执行，需要保留以确保框架的完整
		return "success";
	}
	
	// 发送或者保存汇报的方法
	public String sasHb() throws IOException {
		
		// 插入汇报表
		cUtil.getHuiBaoDao().insertHuiBao(hb);
		// 获取汇报id
		int hbId = cUtil.getHuiBaoDao().findByUIDATYAZ(hb.getUser_id(), hb.getTy(), hb.getZyys()).getId();

		// 插入本周工作
		for (int i = 0; i < cdtasks.length; i++) {
			NowTask nt = new NowTask();
			nt.setCdtask(cdtasks[i]);
			nt.setXdrq(xdrqs[i]);
			nt.setWcrq(wcrqs[i]);
			nt.setHb_id(hbId);
			cUtil.getNowTaskDao().insertNowTask(nt);
		}
		
		// 插入下周计划重点
		for (int i = 0; i < nextTask.length; i++) {
			NextTask nextT = new NextTask();
			nextT.setCdtask(nextTask[i]);
			nextT.setRq(nextwcDate[i]);
			nextT.setZr(nextzrren[i]);
			nextT.setXtbm(nextczbm[i]);
			nextT.setBz(nextbz[i]);
			nextT.setHb_id(hbId);
			cUtil.getNextTaskDao().insertNextTask(nextT);
		}
		
		// 插入存在的问题
		for (int i = 0; i < wtrenwu.length; i++) {
			WenTi wenTi = new WenTi();
			wenTi.setCdtask(wtrenwu[i]);
			wenTi.setZywt(wtwt[i]);
			wenTi.setDcjjy(wtdc[i]);
			wenTi.setHb_id(hbId);
			cUtil.getWenTiTaskDao().insertWenTi(wenTi);
		}
		
		// 如果是周报
		if (hb.hbType == 0) return "zb";
		
		// 如果是月报
		else if (hb.hbType == 1) return "yb";
		
		// 如果是年报
		else if (hb.hbType == 2) return "nb";
		
		return "success";
		
	}
	
	// 待发
	public String sendHb() throws IOException {
		
		String name = session.get("name").toString();
		// 根据用户名得到用户
		User user = cUtil.getUserDao().findUserByName(name);
		
		user.setZyy(20);

		hb.setUser_id(user.getId());
		hb.setSt(2);
		
		if (hb.hbType == 0) {
			
			hb.setZyys(EntityUtil.weekNum);
			hbs = cUtil.getHuiBaoDao().findHuiBaoByUserIdAndTYAndST(hb.getUser_id(), hb.getTy(), hb.getSt());
			
			return "zb";
			
		} else if (hb.hbType == 1) {
				
			hb.setZyys(EntityUtil.parseMonth());
			hbs = cUtil.getHuiBaoDao().findHuiBaoByUserIdAndTYAndST(hb.getUser_id(), hb.getTy(), hb.getSt());

			return "yb";
			
		} else if (hb.hbType == 2) {
			
			hb.setZyys(EntityUtil.parseYear());
			hbs = cUtil.getHuiBaoDao().findHuiBaoByUserIdAndTYAndST(hb.getUser_id(), hb.getTy(), hb.getSt());
			
			return "nb";
			
		}
		
		return "success";
	}
	
	// 编辑待发汇报
	public String editHb() throws IOException {
		
		// 得到所有用户名
		users = cUtil.getUserDao().findAllUsers();

		// 得到所有部门名
		bms = cUtil.getBuMenDao().findAllBuMen();
		
		hb = cUtil.getHuiBaoDao().findHuiBaoById(hb.hbId);

		HuiBao hBao = cUtil.getHuiBaoDao().findByUIDATYAZ(hb.getUser_id(), hb.hbType, hb.getZyys()-1);
		
		if (hBao.getSt() == 2) {
			pts = new ArrayList<>();
		} else {
			pts = cUtil.getNowTaskDao().findByhbId(hBao.getId());			
		}
		
		nowts = cUtil.getNowTaskDao().findByhbId(hb.hbId);
		
		nextts = cUtil.getNextTaskDao().findByhbId(hb.hbId);
		
		wts = cUtil.getWenTiTaskDao().findByhbId(hb.hbId);
		
		
		// 如果是周报
		if (hb.hbType == 0)
			return "zb";

		// 如果是月报
		else if (hb.hbType == 1)
			return "yb";

		// 如果是年报
		else if (hb.hbType == 2)
			return "nb";

		return "success";
		
	}
	
	// 删除汇报
	public String deleteHb() throws IOException {

		// 删除汇报表
		cUtil.getHuiBaoDao().deleteHuiBaoById(hb.hbId);
		// 删除nowtask表
		cUtil.getNowTaskDao().deleteNowTaskByhbId(hb.hbId);
		// 删除nexttask表
		cUtil.getNextTaskDao().deleteNextTaskByhbId(hb.hbId);
		// 删除wenti表
		cUtil.getWenTiTaskDao().deleteWenTiByhbId(hb.hbId);
		
		return "success";
	}
	
	// 已发
	public String oldHb() throws IOException {
		
		String name = session.get("name").toString();
		// 根据用户名得到用户
		User user = cUtil.getUserDao().findUserByName(name);
		hb.setUser_id(user.getId());
		hbs = cUtil.getHuiBaoDao().findHuiBaoByUserIdAndTYAndST(hb.getUser_id(), hb.getTy(), 1);
		hbs.addAll(cUtil.getHuiBaoDao().findHuiBaoByUserIdAndTYAndST(hb.getUser_id(), hb.getTy(), 3));
		
		// 如果是周报
		if (hb.hbType == 0)
			return "zb";

		// 如果是月报
		else if (hb.hbType == 1)
			return "yb";

		// 如果是年报
		else if (hb.hbType == 2)
			return "nb";
		
		return "success";
	}
	
	// 管理员收件箱
	public String normalGet() throws IOException {
		
		String managerName = session.get("name").toString();
		wfhbs = cUtil.getHuiBaoDao().findHuiBaoAndUNameByMNameAndTyAndST(managerName, hb.hbType, 1);
		
		return "success";
	}
	
	// 超级管理员的收件箱
	public String superGet() throws IOException {
		
		String managerName = session.get("name").toString();
		wfzbs = cUtil.getHuiBaoDao().findHuiBaoAndUNameByMNameAndTyAndST(managerName, 0, 1);
		wfybs = cUtil.getHuiBaoDao().findHuiBaoAndUNameByMNameAndTyAndST(managerName, 1, 1);
		wfnbs = cUtil.getHuiBaoDao().findHuiBaoAndUNameByMNameAndTyAndST(managerName, 2, 1);
		
		return "success";
	}
	
	// 待发list中发送汇报
	public String updateSaved() throws IOException {
		
		cUtil.getHuiBaoDao().updateHuiBaoByIdSetST(hb.hbId, 1);
		hb = cUtil.getHuiBaoDao().findHuiBaoById(hb.hbId);
		
		// 如果是周报
		if (hb.hbType == 0)
			return "zb";

		// 如果是月报
		else if (hb.hbType == 1)
			return "yb";

		// 如果是年报
		else if (hb.hbType == 2)
			return "nb";
		
		return "success";
	}
	
	public String sasoldHb() throws IOException {
		
		hb.setRq(dateFormat.format(date));
		
		// 删除汇报表、nowtask表、nexttask表和wenti表
		cUtil.getHuiBaoDao().deleteHuiBaoById(hb.hbId);
		cUtil.getNowTaskDao().deleteNowTaskByhbId(hb.hbId);
		cUtil.getNextTaskDao().deleteNextTaskByhbId(hb.hbId);
		cUtil.getWenTiTaskDao().deleteWenTiByhbId(hb.hbId);
		
		// 插入汇报
		cUtil.getHuiBaoDao().insertHuiBao(hb);
		int hbId = cUtil.getHuiBaoDao().findByUIDATYAZ(hb.getUser_id(), hb.getTy(), hb.getZyys()).getId();
		
		// 插入本周工作
		for (int i = 0; i < cdtasks.length; i++) {
			NowTask nt = new NowTask();
			nt.setCdtask(cdtasks[i]);
			nt.setXdrq(xdrqs[i]);
			nt.setWcrq(wcrqs[i]);
			nt.setHb_id(hbId);
			cUtil.getNowTaskDao().insertNowTask(nt);
		}

		// 插入下周计划重点
		for (int i = 0; i < nextTask.length; i++) {
			NextTask nextT = new NextTask();
			nextT.setCdtask(nextTask[i]);
			nextT.setRq(nextwcDate[i]);
			nextT.setZr(nextzrren[i]);
			nextT.setXtbm(nextczbm[i]);
			nextT.setBz(nextbz[i]);
			nextT.setHb_id(hbId);
			cUtil.getNextTaskDao().insertNextTask(nextT);
		}

		// 插入存在的问题
		for (int i = 0; i < wtrenwu.length; i++) {
			WenTi wenTi = new WenTi();
			wenTi.setCdtask(wtrenwu[i]);
			wenTi.setZywt(wtwt[i]);
			wenTi.setDcjjy(wtdc[i]);
			wenTi.setHb_id(hbId);
			cUtil.getWenTiTaskDao().insertWenTi(wenTi);
		}
		
		// 如果是周报
		if (hb.hbType == 0)
			return "zb";

		// 如果是月报
		else if (hb.hbType == 1)
			return "yb";

		// 如果是年报
		else if (hb.hbType == 2)
			return "nb";
		
		return "success";
	}
	
	public String reviewHb() throws IOException {
		
		hb = cUtil.getHuiBaoDao().findHuiBaoById(hb.hbId);
		HuiBao hBao = cUtil.getHuiBaoDao().findByUIDATYAZ(hb.getUser_id(), hb.hbType, hb.getZyys()-1);
		
		if (hBao.getSt() == 2) {
			pts = new ArrayList<>();
		} else {
			pts = cUtil.getNowTaskDao().findByhbId(hBao.getId());			
		}
		nowts = cUtil.getNowTaskDao().findByhbId(hb.hbId);
		nextts = cUtil.getNextTaskDao().findByhbId(hb.hbId);
		wts = cUtil.getWenTiTaskDao().findByhbId(hb.hbId);
		pf = cUtil.getPiWenDao().findPWByhbId(hb.hbId);
		
		// 如果是周报
		if (hb.hbType == 0)
			return "zb";

		// 如果是月报
		else if (hb.hbType == 1)
			return "yb";

		// 如果是年报
		else if (hb.hbType == 2)
			return "nb";
		
		return "success";
	}
	
	public String pfHb() throws IOException {
		
		hbu = cUtil.getHuiBaoDao().findHuiBaoWithUserByhbId(hb.hbId);
		HuiBao hBao = cUtil.getHuiBaoDao().findByUIDATYAZ(hbu.getUser_id(), hbu.getTy(), hbu.getZyys()-1);
		
		if (hBao.getSt() == 2) {
			pts = new ArrayList<>();
		} else {
			pts = cUtil.getNowTaskDao().findByhbId(hBao.getId());			
		}
		nowts = cUtil.getNowTaskDao().findByhbId(hb.hbId);
		nextts = cUtil.getNextTaskDao().findByhbId(hb.hbId);
		wts = cUtil.getWenTiTaskDao().findByhbId(hb.hbId);
		pf = cUtil.getPiWenDao().findPWByhbId(hb.hbId);
		
		// 如果是周报
		if (hbu.getTy() == 0)
			return "zb";

		// 如果是月报
		else if (hbu.getTy() == 1)
			return "yb";

		// 如果是年报
		else if (hbu.getTy() == 2)
			return "nb";
		
		return "success";
	}
	
	public String uploadPf() throws IOException {
		
		// 批阅人姓名
		String name = session.get("name").toString();
		pf.setPw_name(name);
		
		// 批阅人部门
		int bmid = cUtil.getUserDao().findUserByName(name).getBm_id();
		String bm_name = cUtil.getBuMenDao().findById(bmid).getName();
		pf.setPw_bmName(bm_name);
		
		// 批阅日期
		String rq = dateFormat.format(date);
		pf.setPw_rq(rq);
		
		// 汇报id
		pf.setHbId(hb.hbId);
		
		// 将汇报state从1变成3
		cUtil.getHuiBaoDao().updateHuiBaoByIdSetST(hb.hbId, 3);
		
		// 插入批文
		cUtil.getPiWenDao().insertNewPiWen(pf);
		
		// 如果是周报
		if (hb.hbType == 0)
			return "zb";

		// 如果是月报
		else if (hb.hbType == 1)
			return "yb";

		// 如果是年报
		else if (hb.hbType == 2)
			return "nb";
		
		return "success";
	}

	
}
