package com.ansel.dao;

import com.ansel.entity.PiWen;

public interface PiWenDao {
	
	public PiWen findPWByhbId(int hbId);
	
	public void insertNewPiWen(PiWen piWen);

}
