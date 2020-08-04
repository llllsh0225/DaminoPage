package com.damino.web.admin.terms.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.damino.web.admin.terms.TermsDAO;
import com.damino.web.admin.terms.TermsVO;

@Repository("termsDAO")
public class TermsDAOImpl implements TermsDAO{
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	@Override
	public List<TermsVO> getTermsList() {
		System.out.println("TermsDAOImpl getTermsList()");
		return sqlSessionTemplate.selectList("TermsDAO.getTermsList");
	}
	@Override
	public TermsVO getTerms(TermsVO vo) {
		System.out.println("TermsDAOImpl getTerms(vo)");
		return sqlSessionTemplate.selectOne("TermsDAO.getContent", vo);
	}

}
