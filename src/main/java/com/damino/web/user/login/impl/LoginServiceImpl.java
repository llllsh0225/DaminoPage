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
	
	//id 중복확인
	@Override
	public int idcheck(String userid) {
		System.out.println("service" + userid);
		return userDAO.idcheck(userid);
	}
	
//	@Override
//	public UserVO checkSignup(UserVO vo) {
//		return userDAO.checkSignup(vo);
//	}

}
