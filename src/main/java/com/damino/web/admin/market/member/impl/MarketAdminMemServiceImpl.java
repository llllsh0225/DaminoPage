package com.damino.web.admin.market.member.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.damino.web.admin.homepage.member.HomepageAdminMemDAO;
import com.damino.web.admin.market.member.MarketAdminMemDAO;
import com.damino.web.admin.market.member.MarketAdminMemService;
import com.damino.web.admin.market.member.MarketAdminMemVO;

@Service("marketAdminMemService")
public class MarketAdminMemServiceImpl implements MarketAdminMemService{

	@Autowired
	private MarketAdminMemDAO marketAdminMemDAO;
	
	@Override
	public List<MarketAdminMemVO> getUsersList() {
		System.out.println("MarketAdminMemServiceImpl getUserList()");
		return marketAdminMemDAO.getUsersList();
	}

}
