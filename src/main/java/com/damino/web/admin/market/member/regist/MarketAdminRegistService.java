package com.damino.web.admin.market.member.regist;

import java.util.List;

public interface MarketAdminRegistService {
	public void registMarketAdminMember(MarketAdminMemberVO vo);
	public int idCheck(String managerId);
	public List<MarketAdminMemberVO> searchStore(String storeRegion);
	public List<MarketAdminMemberVO> getStoreManager(MarketAdminMemberVO vo);
}
