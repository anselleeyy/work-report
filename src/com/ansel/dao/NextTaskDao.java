package com.ansel.dao;

import java.util.List;

import com.ansel.entity.NextTask;

public interface NextTaskDao {
	
	public void insertNextTask(NextTask nextTask);
	
	public List<NextTask> findByhbId(int hbId);
	
	public void deleteNextTaskByhbId(int hbId);

}
