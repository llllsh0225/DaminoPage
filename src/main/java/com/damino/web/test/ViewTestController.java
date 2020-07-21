package com.damino.web.test;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ViewTestController {
	@RequestMapping("/main.do")
	public ModelAndView getMainPage() {
		System.out.println("메인페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/main");
		
		return mav;
	}
	@RequestMapping("/quickOrdermain.do")
	public ModelAndView getQuickOrderPage() {
		System.out.println("퀵오더페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/quickorder/quickOrdermain");
		
		return mav;
	}

	@RequestMapping("/basketdetail.do")
	public ModelAndView getBasketDetailPage() {
		System.out.println("장바구니 상세페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/basket/basket-detail");
		return mav;
	}
	
	@RequestMapping("/basketempty.do")
	public ModelAndView getBasketEmptyPage() {
		System.out.println("빈 장바구니 페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/basket/basket-empty");
		return mav;
	}
	
	@RequestMapping("/mania.do")
	public ModelAndView getManiaPage() {
		System.out.println("매니아 페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/service/mania");
		return mav;
	}
}
