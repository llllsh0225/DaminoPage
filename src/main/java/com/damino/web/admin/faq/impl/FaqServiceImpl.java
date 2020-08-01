package com.damino.web.admin.faq.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.damino.web.admin.faq.FaqDAO;
import com.damino.web.admin.faq.FaqService;
import com.damino.web.admin.faq.FaqVO;

@Service("faqService")
public class FaqServiceImpl implements FaqService {
	@Autowired
	private FaqDAO faqDAO;
	
	@Override
	public List<FaqVO> getFaqList() {
		return faqDAO.getFaqList();
	}

}
