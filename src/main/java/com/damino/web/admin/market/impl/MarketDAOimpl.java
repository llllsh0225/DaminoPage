package com.damino.web.admin.market.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.damino.web.admin.market.MarketDAO;
import com.damino.web.admin.market.MarketVO;

@Repository("marketDAO")
public class MarketDAOimpl implements MarketDAO{

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public List<MarketVO> getMarketList() {
		System.out.println("MarketDAOImpl getMarketlist()");
		return sqlSessionTemplate.selectList("MarketDAO.getMarketList");
	}

}
