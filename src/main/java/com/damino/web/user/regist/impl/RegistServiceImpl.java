package com.damino.web.user.regist.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.damino.web.user.regist.RegistService;
import com.damino.web.user.regist.UserMemberDAO;
import com.damino.web.user.regist.UserMemberVO;

@Service("registService")
public class RegistServiceImpl implements RegistService{
	@Autowired
	private UserMemberDAO userMemberDAO;
	
	@Override
	public void registMember(UserMemberVO vo) {
		System.out.println("RegistMemberImpl registMember(vo)");
		userMemberDAO.registUserMember(vo);
	}
}