package com.damino.web.admin.faq;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class FaqController {
	@Autowired
	private FaqService faqService;
	
	@RequestMapping(value="/qna_list.admdo", method=RequestMethod.GET)
	public ModelAndView getFaqList(FaqVO vo, ModelAndView mav){
		List<FaqVO> faqList = faqService.getFaqList(vo);
		
		mav.addObject("faqList", faqList);
		mav.setViewName("sites/questionAndAnswer/qna_list");
		
		return mav;
	}
	
	@RequestMapping(value="/qna_list.admdo", method=RequestMethod.POST)
	public ModelAndView getFaqTypeSearch(FaqVO vo, ModelAndView mav){
		System.out.println("검색 조건 : " + vo.getFaqTypeKeyword());
		List<FaqVO> faqList = faqService.getFaqList(vo);
		
		mav.addObject("faqList", faqList);
		mav.setViewName("sites/questionAndAnswer/qna_list");
		
		return mav;
	}
	

	@RequestMapping(value="/getFaq.admdo", method=RequestMethod.GET)
	public ModelAndView getFaq(FaqVO vo, ModelAndView mav) {
		FaqVO faq = faqService.getFaq(vo);
		
		mav.setViewName("/sites/questionAndAnswer/qna_view");
		mav.addObject("faq", faq);
		
		return mav;
	}
	
	@RequestMapping(value="/insertFaq.admdo", method=RequestMethod.POST)
	public String insertFaq(FaqVO vo) {
		faqService.insertFaq(vo);
		
		return "redirect:qna_list.admdo";
	}
	
	@RequestMapping(value="/updateFaq.admdo", method=RequestMethod.POST)
	public String updateFaq(FaqVO vo) {
		faqService.updateFaq(vo);
		
		return "redirect:qna_list.admdo";
	}
	
	@RequestMapping(value="/deleteFaq.admdo", method=RequestMethod.POST)
	public String deleteFaq(FaqVO vo) {
		faqService.deleteFaq(vo);
		
		return "redirect:qna_list.admdo";
	}
}
