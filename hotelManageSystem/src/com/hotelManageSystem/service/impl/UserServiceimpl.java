package com.hotelManageSystem.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hotelManageSystem.dao.UserMapper;
import com.hotelManageSystem.po.User;
import com.hotelManageSystem.service.UserService;


@Service
public class UserServiceimpl implements UserService{
	@Autowired
	private UserMapper userDao;
	
	@Override
	public User selUserById(String userName) {
		return userDao.selUserById(userName);
		
		
	}

	@Override
	public int selUserCount() {
		// TODO Auto-generated method stub
		return userDao.selUserCount();
	}

	@Override
	public void addUser(User user) {
		userDao.addUser(user);
		
	}

	@Override
	public int userLevelChange(int  score,int userId) {
	return userDao.userLevelChange(score,userId);
	}

	@Override
	public User userCenter(int userId) {
		
		return userDao.userCenter(userId);
	}

}
