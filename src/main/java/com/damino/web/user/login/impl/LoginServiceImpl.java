package com.damino.web.user.login.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.damino.web.user.login.LoginService;
import com.damino.web.user.login.UserDAO;
import com.damino.web.user.login.UserVO;

@Service("loginService")
public class LoginServiceImpl implements LoginService {
	@Autowired
	private UserDAO userDAO;
	
	@Override
	public UserVO login(UserVO vo){
		System.out.println("LoginServiceImpl login(vo)");
		return userDAO.login(vo);
	}

	@Override
	public void insertGuestInfo(UserVO vo) {
		userDAO.insertGuestInfo(vo);
	}

	

}
