package com.ansel.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ansel.entity.BuMen;

public interface BuMenDao {
	
	public BuMen findById(int bmId);
	
	public List<BuMen> findAllBuMen();
	
	public void deleteBuMenById(int bmId);

	public void updateBuMenNameById(@Param("bmId")int bmId, @Param("bmName")String bmName);
	
	public void insertBuMen(String bmName);
}
