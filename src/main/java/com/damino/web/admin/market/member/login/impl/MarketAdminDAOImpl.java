package com.damino.web.admin.market.member.login.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.damino.web.admin.market.MarketVO;
import com.damino.web.admin.market.member.login.MarketAdminDAO;
import com.damino.web.admin.market.member.login.MarketAdminVO;

@Repository("marketAdminDAO")
public class MarketAdminDAOImpl implements MarketAdminDAO{

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public MarketAdminVO managerLogin(MarketAdminVO vo) {
		System.out.println("MarketAdminDAOImpl managerLogin(vo)");
		return sqlSessionTemplate.selectOne("marketAdminDAO.managerLogin", vo);
	}

	@Override
	public void updateMember(MarketAdminVO vo) {
		sqlSessionTemplate.update("marketAdminDAO.updateMember", vo);
	}

	@Override
	public String getStorename(MarketAdminVO vo) {
		System.out.println("로그인 할 아이디 매장명 가져오기");
		return sqlSessionTemplate.selectOne("marketAdminDAO.getStorename", vo);
	}

	
	
}
