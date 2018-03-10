package com.ansel.dao;

import java.util.List;

import com.ansel.entity.NowTask;

public interface NowTaskDao {
	
	public void insertNowTask(NowTask nowTask);
	
	public List<NowTask> findByhbId(int hbId);
	
	public void deleteNowTaskByhbId(int hbId);

}
