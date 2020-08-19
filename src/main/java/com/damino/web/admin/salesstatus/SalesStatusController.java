package com.damino.web.admin.salesstatus;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class SalesStatusController {

	@Autowired
	private SalesStatusService salesStatusService;
	
	
	@RequestMapping(value="/salesStatus.admdo",  method=RequestMethod.GET)
	public ModelAndView getAdminSalesStatusPage(ModelAndView mav) {
		System.out.println("���� ��Ȳ ������ ����");
		
		int maleCount = salesStatusService.getCountM();
		int femaleCount = salesStatusService.getCountF();
		
		System.out.println("���� ���� �� : " + maleCount + "�� , ���� ������ �� : " + femaleCount + "��");
		mav.addObject("maleCount" , maleCount);
		mav.addObject("femaleCount", femaleCount);
		mav.setViewName("/store_sales/salesStatus");
		
		return mav;
	}
}
