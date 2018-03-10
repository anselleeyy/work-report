package com.ansel.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ansel.entity.HuiBao;
import com.ansel.entity.HuiBao_User;

public interface HuiBaoDao {
	
	public HuiBao findHuiBaoById(int hbId);
	
	public List<HuiBao> findHuiBaoByUserIdAndTY(@Param("userId")int userId, @Param("hbType")int hbType);
	
	public List<HuiBao> findHuiBaoByUserIdAndST(@Param("userId")int userId, @Param("hbState")int hbState);
	
	public List<HuiBao_User> findHuiBaoAndUNameByMNameAndTyAndST(@Param("managerName")String managerName, @Param("hbType")int hbType, @Param("hbState")int hbState);
	
	public HuiBao_User findHuiBaoWithUserByhbId(int hbId);
	
	public HuiBao findByUIDATYAZ(@Param("userId")int userId, @Param("hbType")int hbType, @Param("hbZyys")int hbZyys);
	
	public List<HuiBao> findWFHB(@Param("hbType")int hbType, @Param("hbZyys")int hbZyys, @Param("hbState")int hbState);
	
	public List<HuiBao> findHuiBaoByUserIdAndTYAndST(@Param("userId")int userId, @Param("hbType")int hbType, @Param("hbState")int hbState);
	
	public void insertHuiBao(HuiBao hb);
	
	public void deleteHuiBaoById(int hbId);
	
	public void updateHuiBaoByIdSetST(@Param("hbId")int hbId, @Param("hbState")int hbState);

}
