package com.damino.web.admin.member.regist.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.damino.web.admin.member.regist.AdminMemberDAO;
import com.damino.web.admin.member.regist.AdminMemberService;
import com.damino.web.admin.member.regist.AdminMemberVO;


@Service("adminMemberService")
public class AdminMemberServiceImpl implements AdminMemberService {
	
	@Autowired
	private AdminMemberDAO adminMemberDAO;
	
	@Override
	public void registAdminMember(AdminMemberVO vo) {
		System.out.println("[adminServiceImpl ½ÇÇà]");
		adminMemberDAO.regAdminMember(vo);
	}

	@Override
	public int admincheck(String adminid) {
		System.out.println("#service[admin] : " + adminid);
		return adminMemberDAO.admincheck(adminid);
	}

	@Override
	public void changeTempPW(AdminMemberVO vo) {
		System.out.println("#service[admin] : " + vo);
		adminMemberDAO.changeTempPW(vo);
	}

}
