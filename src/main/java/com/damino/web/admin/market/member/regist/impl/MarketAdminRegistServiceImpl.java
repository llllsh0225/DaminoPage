package com.damino.web.admin.market.member.regist.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.damino.web.admin.market.member.login.MarketAdminDAO;
import com.damino.web.admin.market.member.regist.MarketAdminMemberDAO;
import com.damino.web.admin.market.member.regist.MarketAdminMemberVO;
import com.damino.web.admin.market.member.regist.MarketAdminRegistService;

@Service("marketAdminRegistService")
public class MarketAdminRegistServiceImpl implements MarketAdminRegistService{

	@Autowired
	private MarketAdminMemberDAO marketAdminMemberDAO;
	
	public MarketAdminMemberDAO getMarketAdminMemberDAO() {
		return marketAdminMemberDAO;
	}

	public void setMarketAdminMemberDAO(MarketAdminMemberDAO marketAdminMemberDAO) {
		this.marketAdminMemberDAO = marketAdminMemberDAO;
	}


	@Override
	public int idCheck(String managerId) {
		System.out.println("#service[id] : " + managerId);
		return marketAdminMemberDAO.idCheck(managerId);
	}

	@Override
	public void registMarketAdminMember(MarketAdminMemberVO vo) {
		System.out.println("MarketAdminRegistServiceImpl MarketAdminMemberVO(vo)");
		marketAdminMemberDAO.MarketAdminMember(vo);
	}

	@Override
	public List<MarketAdminMemberVO> searchStore(String storeRegion) {
		System.out.println("MarketAdminRegistServiceImpl String storeRegion");
		return marketAdminMemberDAO.searchStore(storeRegion);
	}


}
