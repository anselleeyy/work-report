package com.ansel.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ansel.entity.User;

public interface UserDao {

	public User findUserByName(String userName);
	
	public User findById(int userId);
	
	public User findByGh(String userGh);
	
	public User findByNameorGh(@Param("NameorGh")String NameorGh);
	
	public List<User> findAllUsers();
	
	public void updateUserInfo(@Param("userPhone")String userPhone, @Param("userPwd")String userPwd, @Param("userId")int userId);
	
}
