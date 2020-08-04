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

//	@Override
//	public MarketAdminVO getMember(MarketAdminVO vo) {
//		System.out.println("MarketAdminDAOImpl getMember(MarketAdminMemVO vo)");
//		return sqlSessionTemplate.selectOne("marketAdminMemberDAO.getMember", vo);
//	}

	@Override
	public MarketAdminVO checkMemberId(String id) {
		System.out.println("MarketAdminDAOImpl checkMemberId(String id)");
		return sqlSessionTemplate.selectOne("marketAdminDAO.checkMemberId", id);
	}

	@Override
	public void updateMember(MarketAdminVO vo) {
		sqlSessionTemplate.update("marketAdminDAO.updateMember", vo);
	}
	
}
