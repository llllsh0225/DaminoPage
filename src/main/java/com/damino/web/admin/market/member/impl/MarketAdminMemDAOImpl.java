package com.damino.web.admin.market.member.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.damino.web.admin.market.member.MarketAdminMemDAO;
import com.damino.web.admin.market.member.MarketAdminMemVO;

@Repository("marketAdminMemDAO")
public class MarketAdminMemDAOImpl implements MarketAdminMemDAO{

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public List<MarketAdminMemVO> getUsersList() {
		System.out.println("MarketAdminMemDAOImpl getUserList()");
		return sqlSessionTemplate.selectList("marketAdminMemDAO.getUsersList");
	}

}
