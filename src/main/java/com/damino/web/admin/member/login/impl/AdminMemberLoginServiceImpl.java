package com.damino.web.admin.member.login.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.damino.web.admin.member.login.AdminMemberLoginDAO;
import com.damino.web.admin.member.login.AdminMemberLoginService;
import com.damino.web.admin.member.login.AdminMemberLoginVO;



@Service("adminMemberLoginService")
public class AdminMemberLoginServiceImpl implements AdminMemberLoginService {

	@Autowired
	private AdminMemberLoginDAO adminloginDAO;
	
	@Override
	public AdminMemberLoginVO login(AdminMemberLoginVO vo) {
		System.out.println("[adminMemberLoginServiceImpl] : "+vo );
		return adminloginDAO.login(vo);
	}

}
