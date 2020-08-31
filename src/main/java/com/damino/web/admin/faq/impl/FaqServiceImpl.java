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
	public List<FaqVO> getFaqList(FaqVO vo) {
		return faqDAO.getFaqList(vo);
	}

	@Override
	public void insertFaq(FaqVO vo) {
		faqDAO.insertFaq(vo);
	}

	@Override
	public FaqVO getFaq(FaqVO vo) {
		return faqDAO.getFaq(vo);
	}

	@Override
	public void updateFaq(FaqVO vo) {
		faqDAO.updateFaq(vo);
	}

	@Override
	public void deleteFaq(FaqVO vo) {
		faqDAO.deleteFaq(vo);
	}

	//权其捞瘤包府磊 main侩
	@Override
	public List<FaqVO> faqMain() {
		return faqDAO.faqMain();
	}


}
