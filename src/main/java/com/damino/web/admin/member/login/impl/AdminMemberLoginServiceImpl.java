package com.damino.web.admin.member.login.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.damino.web.admin.market.member.regist.MarketAdminMemberVO;
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

	@Override
	public List<MarketAdminMemberVO> marketAdminList() {
		System.out.println("매장관리자 명단");
		return adminloginDAO.marketAdminList();
	}

	@Override
	public void changeCheckMem(MarketAdminMemberVO vo) {
		System.out.println("매장관리자 승인상태 변경");
		adminloginDAO.changeCheckMem(vo);
	}

	@Override
	public void marketMemDel(MarketAdminMemberVO vo) {
		System.out.println("매장관리자 삭제");
		adminloginDAO.marketMemDel(vo);
	}

}
