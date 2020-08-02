package com.damino.web.user.login.impl;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
	public UserVO login(UserVO vo, HttpSession session){
		System.out.println("LoginServiceImpl login(vo)");
		return userDAO.login(vo);
	}

	@Override
	public void logout(HttpSession session, HttpServletRequest request) {
		System.out.println("session.invalidate()");
		session=request.getSession();
		session.invalidate();
	}
	

}
