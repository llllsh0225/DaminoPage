package com.damino.web.test;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ViewTestController {
	@RequestMapping("/main.do")
	public String getMainPage() {
		System.out.println("���������� ����");
		
		return "main";
	}

	@RequestMapping("/quickOrdermain.do")
	public String getQuickOrderMainPage() {
		System.out.println("���������� ����");
		
		return "quickOrdermain";
	}
}
