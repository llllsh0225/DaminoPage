package com.damino.web.admin.user.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.damino.web.admin.user.UsersDAO;
import com.damino.web.admin.user.UsersService;
import com.damino.web.admin.user.UsersVO;

@Service("usersService")
public class UsersServiceImpl implements UsersService{

	@Autowired
	private UsersDAO userDAO;
	
	@Override
	public List<UsersVO> getUsersList() {
		System.out.println("UserServiceImpl getUserList()");
		return userDAO.getUsersList();
	}

}
