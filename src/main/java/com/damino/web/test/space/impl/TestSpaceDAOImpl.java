package com.damino.web.test.space.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.damino.web.test.space.TestSpaceDAO;

@Repository("testspaceDAO")
public class TestSpaceDAOImpl implements TestSpaceDAO {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public int testSpace() {
		System.out.println("[Chart Scav DAO]");
		return sqlSessionTemplate.selectOne("testSpaceDAO.getTestSpace");
	}

}
