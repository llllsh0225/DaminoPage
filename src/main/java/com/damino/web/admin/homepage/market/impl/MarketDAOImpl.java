package com.damino.web.admin.homepage.market.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.damino.web.admin.homepage.market.MarketDAO;
import com.damino.web.admin.homepage.market.MarketVO;

@Repository("marketDAO")
public class MarketDAOImpl implements MarketDAO{

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	// DB 매장정보 가져오기
	@Override
	public List<MarketVO> getMarketList() {
		System.out.println("MarketDAOImpl getMarketlist()");
		return sqlSessionTemplate.selectList("MarketDAO.getMarketList");
	}

	// 수정할 매장 가져오기
	@Override
	public MarketVO getMarket(MarketVO vo) {
		System.out.println("MarketDAOImpl getMarket()");
		return sqlSessionTemplate.selectOne("MarketDAO.getMarket", vo);
	}
	
	// 매장 수정
	@Override
	public void updateMarket(MarketVO vo) {
		System.out.println("MarketDAOImpl getMarketlist()");
		sqlSessionTemplate.update("MarketDAO.updateMarket", vo);	
	}

	// 매장 입력
	@Override
	public void insertMarket(MarketVO vo) {
		System.out.println("MarketDAOImpl insertMarket(vo)");
		sqlSessionTemplate.insert("MarketDAO.insertMarket", vo);
	}

	// 매장 삭제
	@Override
	public void deleteMarket(MarketVO vo) {
		System.out.println("MarketDAOImpl deleteMarket(vo)");
		sqlSessionTemplate.delete("MarketDAO.deleteMarket", vo);
	}
}
