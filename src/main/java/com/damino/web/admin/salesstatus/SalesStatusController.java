package com.damino.web.admin.salesstatus;

import java.util.List;

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
	public ModelAndView getAdminSalesStatusPage(ModelAndView mav, SalesVO vo) {
		System.out.println("매출 현황 페이지 열기");
		
		int maleCount = salesStatusService.getCountM();
		int femaleCount = salesStatusService.getCountF();
		System.out.println("남성 유저 수 : " + maleCount + "명 , 여성 유저의 수 : " + femaleCount + "명");
		
		int orderPrice = salesStatusService.getOrderPrice();//전체 주문금액
		System.out.println("전체 주문 금액 :" + orderPrice);
		
		List<SalesVO> monthly = salesStatusService.getMonthly();//주문내역이 있는 최근 12개월 yyyy-mm형태로 가져오기(차트 x축)
		System.out.println("주문내역이 있는 최근 12개월 : " + monthly);
		
		List<SalesVO> monthlySales = salesStatusService.getMonthlySales();//주문내역이 있는 최근 12개월 월별 매출액 가져옴(차트 y축)
		System.out.println("주문내역이 있는 최근 12개월 매출액 :" + monthlySales);
		
		mav.addObject("maleCount" , maleCount);
		mav.addObject("femaleCount", femaleCount);
		mav.addObject("orderPrice", orderPrice);
		mav.addObject("monthly", monthly);
		mav.addObject("monthlySales", monthlySales);
		mav.setViewName("/store_sales/salesStatus");
		
		return mav;
	}
}
