package com.damino.web.admin.member.login;

import java.util.List;

import com.damino.web.admin.market.member.regist.MarketAdminMemberVO;

public interface AdminMemberLoginDAO {
	public AdminMemberLoginVO login(AdminMemberLoginVO vo);

	
	//매장 관리자 리스트 불러오기
	public List<MarketAdminMemberVO> marketAdminList();
	
	
}
