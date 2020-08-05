package com.damino.web.user.terms.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.damino.web.user.terms.UserTermsDAO;
import com.damino.web.user.terms.UserTermsService;
import com.damino.web.user.terms.UserTermsVO;

@Service
public class UserTermsServiceImpl implements UserTermsService{
	@Autowired
	private UserTermsDAO userTermsDAO;
	
	@Override
	public UserTermsVO getPrivacy(UserTermsVO vo) {
		System.out.println("TermsServiceImpl getPrivacy(vo)");
		return userTermsDAO.getPrivacy(vo);
	}

	@Override
	public UserTermsVO getHomepageLaw(UserTermsVO vo) {
		System.out.println("TermsServiceImpl getHomepageLaw(vo)");
		return userTermsDAO.getHomepageLaw(vo);
	}

	@Override
	public UserTermsVO getLocationLaw(UserTermsVO vo) {
		System.out.println("TermsServiceImpl getLocationLaw(vo)");
		return userTermsDAO.getLocationLaw(vo);
	}
	
}
