package com.damino.web.admin.market;

import java.util.List;

public interface MarketService {
	public List<MarketVO> getMarketList();
	public MarketVO getMarket(MarketVO vo);
	public void updateMarket(MarketVO vo);
	public void insertMarket(MarketVO vo);
	public void deleteMarket(MarketVO vo);
}
