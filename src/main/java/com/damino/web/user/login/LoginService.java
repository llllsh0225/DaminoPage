package com.damino.web.user.login;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public interface LoginService {
	public UserVO login(UserVO vo, HttpSession session);
	public void logout(HttpSession session, HttpServletRequest request);
}
