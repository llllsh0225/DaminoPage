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
	public ModelAndView getHowToOrderPage(ModelAndView mav) {
		List<FaqViewVO> faqViewList = faqViewService.getHowToOrderPage();

		mav.addObject("faqViewList", faqViewList);
		mav.setViewName("board/faq_howToOrder");

		return mav;
	}

	@RequestMapping("/faqMain.do") // ���� /faqHowToOrder.do �� ����
	public ModelAndView getFaqMainPage(ModelAndView mav) {
		System.out.println("FAQ ���������� ����");

		List<FaqViewVO> faqViewList = faqViewService.getHowToOrderPage();

		mav.addObject("faqViewList", faqViewList);
		mav.setViewName("board/faq_howToOrder");

		return mav;
	}

	@RequestMapping("/faqHomePage.do")
	public ModelAndView getFaqHomepagePage(ModelAndView mav) {
		System.out.println("FAQ Ȩ������ ���� ������ ����");

		List<FaqViewVO> faqViewList = faqViewService.getAboutHomepagePage();
		mav.addObject("faqViewList", faqViewList);
		mav.setViewName("board/faq_homePage");
		return mav;
	}

	@RequestMapping("/faqOrderCheck.do")
	public ModelAndView getFaqOrderCheckPage(ModelAndView mav) {
		System.out.println("FAQ �ֹ�Ȯ�� ������ ����");

		List<FaqViewVO> faqViewList = faqViewService.getOrderCheckPage();

		mav.addObject("faqViewList", faqViewList);
		mav.setViewName("board/faq_orderCheck");
		return mav;
	}

	@RequestMapping("/faqSendPresent.do")
	public ModelAndView getFaqSendPresentPage(ModelAndView mav) {
		System.out.println("FAQ �����ϱ� ������ ����");

		List<FaqViewVO> faqViewList = faqViewService.getSendPresentPage();
		mav.addObject("faqViewList", faqViewList);
		mav.setViewName("board/faq_sendPresent");
		return mav;
	}

	@RequestMapping("/faqWrapOrder.do")
	public ModelAndView getFaqWrapOrderPage(ModelAndView mav) {
		System.out.println("FAQ �����ֹ� ������ ����");

		List<FaqViewVO> faqViewList = faqViewService.getWrapOrderPage();
		mav.addObject("faqViewList", faqViewList);
		mav.setViewName("board/faq_wrapOrder");
		return mav;
	}
}
