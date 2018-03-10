package com.ansel.dao;

import java.util.List;

import com.ansel.entity.WenTi;

public interface WenTiDao {
	
	public void insertWenTi(WenTi wenTi);
	
	public List<WenTi> findByhbId(int hbId);
	
	public void deleteWenTiByhbId(int hbId);

}
