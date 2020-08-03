package com.damino.web.admin.market.member.login;

import org.apache.ibatis.annotations.Param;

public interface MarketAdminDAO {
//	public MarketAdminVO getMember(MarketAdminVO vo);
	public MarketAdminVO checkMemberId(@Param("id") String id);
}
