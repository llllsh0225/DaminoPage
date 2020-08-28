package com.damino.web.admin.salesstatus;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

@Controller
@SessionAttributes({"startdate","enddate","maleCount","femaleCount","orderPrice","monthly","monthlySales","yearly","yearlySales"})
public class SalesStatusController {

	@Autowired
	private SalesStatusService salesStatusService;
	
	@RequestMapping(value="/salesStatus.admdo",  method=RequestMethod.GET)
	public ModelAndView getAdminSalesStatusPage(ModelAndView mav, SalesVO vo, HttpSession session) {
		System.out.println("매출 현황 페이지 열기");
		session.setAttribute("startdate", null);
		int maleCount = salesStatusService.getCountM();
		int femaleCount = salesStatusService.getCountF();
		System.out.println("남성 유저 수 : " + maleCount + "명 , 여성 유저의 수 : " + femaleCount + "명");
		
		int orderPrice = salesStatusService.getOrderPrice();//전체 주문금액
		System.out.println("전체 주문 금액 :" + orderPrice);
		
		List<SalesVO> monthly = salesStatusService.getMonthly();//주문내역이 있는 최근 12개월 yyyy-mm형태로 가져오기(차트 x축)
		System.out.println("주문내역이 있는 최근 12개월 : " + monthly);
		
		List<SalesVO> monthlySales = salesStatusService.getMonthlySales();//주문내역이 있는 최근 12개월 월별 매출액 가져옴(차트 y축)
		System.out.println("주문내역이 있는 최근 12개월 매출액 :" + monthlySales);
		
		List<SalesVO> yearly = salesStatusService.getYearly();//주문내역이 있는 최근 5년 yyyy형태로 가져오기(차트 x축)
		System.out.println("주문내역이 있는 최근 5년 : " + yearly);
		
		List<SalesVO> yearlySales = salesStatusService.getYearlySales();//주문내역이 있는 최근 12개월 월별 매출액 가져옴(차트 y축)
		System.out.println("주문내역이 있는 최근 5년 매출액 :" + yearlySales);
		
		mav.addObject("maleCount" , maleCount);
		mav.addObject("femaleCount", femaleCount);
		mav.addObject("orderPrice", orderPrice);
		mav.addObject("monthly", monthly);
		mav.addObject("monthlySales", monthlySales);
		mav.addObject("yearly", yearly);
		mav.addObject("yearlySales", yearlySales);
		mav.setViewName("/store_sales/salesStatus");
		
		return mav;
	}
	
	@RequestMapping(value="/searchSales.admdo",  method=RequestMethod.POST)
	public ModelAndView getAdminSearchSales(ModelAndView mav, SalesVO vo) {
		System.out.println(vo.getOrderdate());
		List<SalesVO> salesList = salesStatusService.getSalesList(vo);//주문내역
		System.out.println("주문내역 : " + salesList);
		
		System.out.println(vo.getStartdate());
		System.out.println(vo.getEnddate());
		
		List<SalesVO> dateSearch = salesStatusService.getDateSearch(vo);
		System.out.println(dateSearch);//검색기간 날짜 일별로 리스트 저장
		
		List<SalesVO> salesSearch = salesStatusService.getSalesSearch(vo);
		System.out.println(salesSearch);//검색기간 일별로 매출액 리스트 저장
		
		mav.addObject("startdate", vo.getStartdate());//세션
		mav.addObject("enddate", vo.getEnddate());//세션
		mav.addObject("salesList", salesList);
		mav.addObject("dateSearch", dateSearch);
		mav.addObject("salesSearch", salesSearch);
		mav.setViewName("/store_sales/salesStatus");
		return mav;
	}
}
