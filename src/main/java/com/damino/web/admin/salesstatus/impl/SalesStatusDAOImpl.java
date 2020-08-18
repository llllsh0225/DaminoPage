package com.damino.web.admin.salesstatus.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.damino.web.admin.salesstatus.SalesStatusDAO;

@Repository("salesStatusDAO")
public class SalesStatusDAOImpl implements SalesStatusDAO {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public int getCountM() {
		System.out.println("[chart count 巢己蜡历");
		return sqlSessionTemplate.selectOne("salesStausDAO.getCountMale");
	}

	@Override
	public int getCountF() {
		System.out.println("[chart count 咯己蜡历");
		return sqlSessionTemplate.selectOne("salesStausDAO.getCountFemale");
	}

}
