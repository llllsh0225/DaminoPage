package com.damino.web.admin.market.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.damino.web.admin.market.MarketDAO;
import com.damino.web.admin.market.MarketService;
import com.damino.web.admin.market.MarketVO;

@Service("marketService")
public class MarketServiceImpl implements MarketService{
	
	@Autowired
	private MarketDAO marketDAO;
	
	@Override
	public List<MarketVO> getMarketList() {
		System.out.println("MarketServiceImpl getMarketList()");
		return marketDAO.getMarketList(); 
	}

}
