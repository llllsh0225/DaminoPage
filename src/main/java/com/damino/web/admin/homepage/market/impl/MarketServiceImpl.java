package com.damino.web.admin.homepage.market.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.damino.web.admin.homepage.market.MarketDAO;
import com.damino.web.admin.homepage.market.MarketService;
import com.damino.web.admin.homepage.market.MarketVO;

@Service("marketService")
public class MarketServiceImpl implements MarketService{
	
	@Autowired
	private MarketDAO marketDAO;
	
	@Override
	public List<MarketVO> getMarketList() {
		System.out.println("MarketServiceImpl getMarketList()");
		return marketDAO.getMarketList(); 
	}

	@Override
	public MarketVO getMarket(MarketVO vo) {
		System.out.println("MarketServiceImpl getMarket(vo)");
		return marketDAO.getMarket(vo);
	}

		
	@Override
	public void updateMarket(MarketVO vo) {
		System.out.println("MarketServiceImpl updateMarket(vo)");
		marketDAO.updateMarket(vo);
	}

	@Override
	public void insertMarket(MarketVO vo) {
		System.out.println("MarketServiceImpl insertMarket(vo)");
		marketDAO.insertMarket(vo);
	}

	@Override
	public void deleteMarket(MarketVO vo) {
		System.out.println("MarketServiceImpl deleteMarket(vo)");
		marketDAO.deleteMarket(vo);
	}

	
	
}
 