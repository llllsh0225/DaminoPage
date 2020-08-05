package com.damino.web.admin.terms;

import java.util.List;

public interface TermsDAO {
	public List<TermsVO> getTermsList();
	public TermsVO getTerms(TermsVO vo);
	public void updateTerms(TermsVO vo);
	public void insertTerms(TermsVO vo);
	public void deleteTerms(TermsVO vo);
}
