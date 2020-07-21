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

	@RequestMapping("/quickOrdermain.do")
	public String getQuickOrderMainPage() {
		System.out.println("퀵오더메인 열기");
		
		return "quickOrdermain";
	}
}
