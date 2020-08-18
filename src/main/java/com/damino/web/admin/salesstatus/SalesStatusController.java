package com.damino.web.admin.salesstatus;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class SalesStatusController {

	@Autowired
	private SalesStatusService salesStatusService;
	
	
	@RequestMapping(value="/salesStatus.admdo",  method=RequestMethod.GET)
	public String getAdminSalesStatusPage(Model model) {
		System.out.println("매출 현황 페이지 열기");
		
		int maleCount = salesStatusService.getCountM();
		int femaleCount = salesStatusService.getCountF();
		
		System.out.println("남성 유저 수 : " + maleCount + "명 , 여성 유저의 수 : " + femaleCount + "명");
		model.addAttribute("maleCount" , maleCount);
		model.addAttribute("femaleCount", femaleCount);
		
		
		return "/store_sales/salesStatus";
	}
}
