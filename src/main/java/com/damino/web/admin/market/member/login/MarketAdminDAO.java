package com.damino.web.admin.market.member.login;

public interface MarketAdminDAO {
//	public MarketAdminVO getMember(MarketAdminVO vo);
	public MarketAdminVO managerLogin(MarketAdminVO vo);
	void updateMember(MarketAdminVO vo);
}
