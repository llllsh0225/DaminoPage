package com.damino.web.admin.market.member.regist;

public interface MarketAdminRegistService {
	public void registMarketAdminMember(MarketAdminMemberVO vo);
	public int idCheck(String managerId);

}
