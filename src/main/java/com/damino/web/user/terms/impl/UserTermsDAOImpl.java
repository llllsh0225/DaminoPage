package com.damino.web.user.terms.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.damino.web.user.terms.UserTermsDAO;
import com.damino.web.user.terms.UserTermsVO;

@Repository("userTermsDAO")
public class UserTermsDAOImpl implements UserTermsDAO{
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public UserTermsVO getPrivacy(UserTermsVO vo) {
		System.out.println("TermsDAOImpl getPrivacy(vo)");
		return sqlSessionTemplate.selectOne("TermsDAO.getPrivacy", vo);
	}

	@Override
	public UserTermsVO getHomepageLaw(UserTermsVO vo) {
		System.out.println("TermsDAOImpl getHomepageLaw(vo)");
		return sqlSessionTemplate.selectOne("TermsDAO.getHomepageLaw", vo);
	}

	@Override
	public UserTermsVO getLocationLaw(UserTermsVO vo) {
		System.out.println("TermsDAOImpl getLocationLaw(vo)");
		return sqlSessionTemplate.selectOne("TermsDAO.getLocationLaw", vo);
	}
}
