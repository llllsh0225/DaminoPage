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

	@Override
	public List<FaqViewVO> getOrderCheckPage() {
		return faqViewDAO.getOrderCheckPage();
	}

	@Override
	public List<FaqViewVO> getWrapOrderPage() {
		return faqViewDAO.getWrapOrderPage();
	}

	@Override
	public List<FaqViewVO> getSendPresentPage() {
		return faqViewDAO.getSendPresentPage();
	}

	@Override
	public List<FaqViewVO> getAboutHomepagePage() {
		return faqViewDAO.getAboutHomepagePage();
	}

}
