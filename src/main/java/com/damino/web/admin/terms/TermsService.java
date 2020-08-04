package com.damino.web.admin.terms;

import java.util.List;

public interface TermsService {
	public List<TermsVO> getTermsList();
	public TermsVO getTerms(TermsVO vo);
}
