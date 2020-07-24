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
	
	public void setUserDAO(UserDAO userDAO) {
		this.userDAO = userDAO;
	}
	
	@Override
	public UserVO getUser(UserVO vo) {
		return userDAO.getUser(vo);
	}

}
