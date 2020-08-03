package com.damino.web.user.faq.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.damino.web.user.faq.FaqViewDAO;
import com.damino.web.user.faq.FaqViewService;
import com.damino.web.user.faq.FaqViewVO;

@Service("faqViewService")
public class FaqViewServiceImpl implements FaqViewService {

	@Autowired
	private FaqViewDAO faqViewDAO;
	
	@Override
	public List<FaqViewVO> getHowToOrderPage() {
		return faqViewDAO.getHowToOrderPage();
	}

}
