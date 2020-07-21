package com.damino.web.test;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ViewTestController {
	@RequestMapping("/main.do")
	public String getMainPage() {
		System.out.println("메인페이지 열기");
		
		return "main";
	}

	@RequestMapping("/quickOrdermain.do")
	public String getQuickOrderMainPage() {
		System.out.println("퀵오더메인 열기");
		
		return "quickOrdermain";
	}
}
