package com.damino.web.admin.faq.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.damino.web.admin.faq.FaqDAO;
import com.damino.web.admin.faq.FaqVO;

@Repository("faqDAO")
public class FaqDAOImpl implements FaqDAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public List<FaqVO> getFaqList() {
		System.out.println("FAQ 리스트 조회");
		return sqlSessionTemplate.selectList("FaqDAO.getFaqList");
	}

}
