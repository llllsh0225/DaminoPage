package com.damino.web.test;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class OshTestDAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public void insertContent(OshTestVO vo) {
		System.out.println("---> MyBatis로 insertContent() 기능 처리");
		sqlSessionTemplate.insert("OshTestDAO.insertContent", vo);
	}
}
