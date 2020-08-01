package com.damino.web.admin.faq;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class FaqController {
	@Autowired
	private FaqService faqService;
	
	@RequestMapping("/qna_list.admdo")
	public ModelAndView getFaqList(ModelAndView mav){
		List<FaqVO> faqList = faqService.getFaqList();
		
		mav.addObject("faqList", faqList);
		mav.setViewName("sites/questionAndAnswer/qna_list");
		
		return mav;
	}
}
