package com.damino.web.admin.market.member.login.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.damino.web.admin.market.member.login.MarketAdminDAO;
import com.damino.web.admin.market.member.login.MarketAdminLoginService;
import com.damino.web.admin.market.member.login.MarketAdminVO;

@Service("marketAdminLoginService")
public class MarketAdminLoginServiceImpl implements MarketAdminLoginService{

	@Autowired
	private MarketAdminDAO marketAdminDAO;
	
	@Override
	public MarketAdminVO getMember(MarketAdminVO vo) {
		System.out.println("MarketAdminLoginServiceImpl getMember(MarketAdminVO vo)");
		return marketAdminDAO.getMember(vo);
	}

}
