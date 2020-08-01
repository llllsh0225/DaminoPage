package com.damino.web.admin.market.member.regist;

public interface MarketAdminMemberDAO {
	public void MarketAdminMember(MarketAdminMemberVO vo);
	
	public int idCheck(String managerId);
}
