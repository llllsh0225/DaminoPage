package com.damino.web.admin.terms.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.damino.web.admin.terms.TermsDAO;
import com.damino.web.admin.terms.TermsService;
import com.damino.web.admin.terms.TermsVO;

@Service
public class TermsServiceImpl implements TermsService{
	@Autowired
	private TermsDAO termsDAO;

	@Override
	public List<TermsVO> getTermsList() {
		System.out.println("TermsServiceImpl getTermsList()");
		return termsDAO.getTermsList();
	}

	@Override
	public TermsVO getTerms(TermsVO vo) {
		System.out.println("TermsServiceImpl getTerms(vo)");
		return termsDAO.getTerms(vo);
	}
	
	
}
