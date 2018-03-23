package com.hotelManageSystem.dao;

import com.hotelManageSystem.po.User;


public interface UserMapper {
	
	public User selUserById(String userName);
	public int selUserCount();
	public void addUser(User user);
	public int userLevelChange(int score,int userId);
	public User userCenter(int userId);
	
}
