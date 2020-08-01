package com.damino.web.admin.market.member.login.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.damino.web.admin.market.member.login.MarketAdminDAO;
import com.damino.web.admin.market.member.login.MarketAdminVO;

@Repository("marketAdminDAO")
public class MarketAdminDAOImpl implements MarketAdminDAO{

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	@Override
	public MarketAdminVO getMember(MarketAdminVO vo) {
		System.out.println("MarketAdminDAOImpl getMember(MarketAdminMemVO vo)");
		return sqlSessionTemplate.selectOne("marketAdminDAO.getMember", vo);
	}

}
