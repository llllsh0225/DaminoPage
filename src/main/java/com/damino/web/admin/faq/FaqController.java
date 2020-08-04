package com.damino.web.admin.faq;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class FaqController {
	@Autowired
	private FaqService faqService;
	
	// GET 방식으로 접근했을 때 (FAQ 전체 목록 불러오기)
	@RequestMapping(value="/qna_list.admdo", method=RequestMethod.GET)
	public ModelAndView getFaqList(FaqVO vo, ModelAndView mav){
		List<FaqVO> faqList = faqService.getFaqList(vo);
		
		mav.addObject("faqList", faqList);
		mav.setViewName("sites/questionAndAnswer/qna_list");
		
		return mav;
	}
	
	// POST 방식으로 접근 했을 때 (FAQ 카테고리 별로 목록 불러오기)
	@RequestMapping(value="/qna_list.admdo", method=RequestMethod.POST)
	public ModelAndView getFaqTypeSearch(FaqVO vo, ModelAndView mav){
		System.out.println("검색 조건 : " + vo.getFaqTypeKeyword());
		List<FaqVO> faqList = faqService.getFaqList(vo);
		
		mav.addObject("faqList", faqList);
		mav.setViewName("sites/questionAndAnswer/qna_list");
		
		return mav;
	}
	
	// FAQ 상세 보기
	@RequestMapping(value="/getFaq.admdo", method=RequestMethod.GET)
	public ModelAndView getFaq(FaqVO vo, ModelAndView mav) {
		FaqVO faq = faqService.getFaq(vo);
		
		mav.setViewName("/sites/questionAndAnswer/qna_view");
		mav.addObject("faq", faq);
		
		return mav;
	}
	
	// FAQ 등록
	@RequestMapping(value="/insertFaq.admdo", method=RequestMethod.POST)
	public String insertFaq(FaqVO vo) {
		faqService.insertFaq(vo);
		
		return "redirect:qna_list.admdo";
	}
	
	// FAQ 수정
	@RequestMapping(value="/updateFaq.admdo", method=RequestMethod.POST)
	public String updateFaq(FaqVO vo) {
		faqService.updateFaq(vo);
		
		return "redirect:qna_list.admdo";
	}
	
	// FAQ 삭제
	@RequestMapping(value="/deleteFaq.admdo", method=RequestMethod.POST)
	public String deleteFaq(FaqVO vo) {
		faqService.deleteFaq(vo);
		
		return "redirect:qna_list.admdo";
	}
}
