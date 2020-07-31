package com.damino.web.admin.market.user.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.damino.web.admin.homepage.user.UsersDAO;
import com.damino.web.admin.homepage.user.UsersService;
import com.damino.web.admin.homepage.user.UsersVO;

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
