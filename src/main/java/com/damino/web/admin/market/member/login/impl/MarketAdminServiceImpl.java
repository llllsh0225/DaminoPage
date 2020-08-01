package com.damino.web.admin.market.member.login.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.damino.web.admin.market.member.login.MarketAdminDAO;
import com.damino.web.admin.market.member.login.MarketAdminService;
import com.damino.web.admin.market.member.login.MarketAdminVO;

@Service("marketAdminService")
public class MarketAdminServiceImpl implements MarketAdminService{

	@Autowired
	private MarketAdminDAO marketAdminDAO;
	
	
	public MarketAdminDAO getMarketAdminMemDAO() {
		return marketAdminDAO;
	}


	public void setMarketAdminMemDAO(MarketAdminDAO marketAdminDAO) {
		this.marketAdminDAO = marketAdminDAO;
	}

	@Override
	public MarketAdminVO getMember(MarketAdminVO vo) {
		System.out.println("marketAdminService getMember(MarketAdminVO vo)");
		return marketAdminDAO.getMember(vo);
	}

}
