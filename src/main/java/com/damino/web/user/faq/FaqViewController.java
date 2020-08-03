package com.damino.web.user.faq;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class FaqViewController {
	@Autowired
	private FaqViewService faqViewService;
	
	@RequestMapping("/faqHowToOrder.do")
	public ModelAndView getHowToOrderPage(ModelAndView mav){
		List<FaqViewVO> faqViewList = faqViewService.getHowToOrderPage();
		
		mav.addObject("faqViewList", faqViewList);
		mav.setViewName("board/faq_howToOrder");
		
		return mav;
	}
	
	@RequestMapping("/faqMain.do")
	public ModelAndView getFaqMainPage() {
		System.out.println("FAQ ���������� ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/board/faq_main");
		return mav;
	}
	
	@RequestMapping("/faqHomePage.do")
	public ModelAndView getFaqHomepagePage() {
		System.out.println("FAQ Ȩ������ ���� ������ ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/board/faq_homePage");
		return mav;
	}
	
	
	@RequestMapping("/faqOrderCheck.do")
	public ModelAndView getFaqOrderCheckPage() {
		System.out.println("FAQ �ֹ�Ȯ�� ������ ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/board/faq_orderCheck");
		return mav;
	}
	
	@RequestMapping("/faqSendPresent.do")
	public ModelAndView getFaqSendPresentPage() {
		System.out.println("FAQ �����ϱ� ������ ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/board/faq_sendPresent");
		return mav;
	}
	
	@RequestMapping("/faqWrapOrder.do")
	public ModelAndView getFaqWrapOrderPage() {
		System.out.println("FAQ �����ֹ� ������ ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/board/faq_wrapOrder");
		return mav;
	}
}
