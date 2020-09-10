package com.damino.web.user.userinfo.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.damino.web.user.login.UserVO;
import com.damino.web.user.userinfo.UserInfoDAO;
import com.damino.web.user.userinfo.UserInfoService;
import com.damino.web.user.userinfo.UserInfoVO;

@Service("userInfoService")
public class UserInfoServiceImpl implements UserInfoService{
	@Autowired
	private UserInfoDAO userInfoDAO;
	
	@Override
	public UserInfoVO passwdCheck(UserInfoVO vo) {
		System.out.println("UserInfoServiceImpl passwdCheck(vo)");
		return userInfoDAO.passwdCheck(vo);
	}

	@Override
	public void updateUserMember(UserInfoVO vo) {
		System.out.println("UserInfoServiceImpl updateUserMember(vo)");
		userInfoDAO.updateUserMember(vo);
	}

	@Override
	public String findUserId(UserVO vo) {
		return userInfoDAO.findUserId(vo);
	}

}
