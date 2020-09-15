package com.damino.web.admin.market.orderlist;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.damino.web.admin.salesstatus.SalesStatusService;
import com.damino.web.admin.salesstatus.SalesVO;

@Controller
@SessionAttributes({"startdate","enddate"})
public class StoreOrderListController {
	@Autowired
	private StoreOrderListService storeOrderListService;
	@Autowired
	private SalesStatusService salesStatusService;
	
	@RequestMapping("/orderList.smdo")
	public ModelAndView getOrderListPage(ModelAndView mav, HttpSession session) {
		System.out.println("주문 목록 페이지 열기");
		String storename = (String)session.getAttribute("storename");
		System.out.println(storename);
		List<StoreOrderListVO> storeorderlist = storeOrderListService.getStoreOrderList(storename);
		
		mav.addObject("storeorderlist", storeorderlist);
		mav.setViewName("/order/storeOrderList");
		
		
		return mav;
	}
	
	@RequestMapping("/orderSearch.smdo")
	public ModelAndView getOrderSearchPage(ModelAndView mav, HttpSession session) {
		System.out.println("주문 검색 페이지 열기");
		String storename = (String)session.getAttribute("storename");
		List<StoreOrderListVO> storeorderlist = storeOrderListService.getStoreOrderList(storename);
		mav.addObject("storeorderlist", storeorderlist);
		mav.setViewName("/order/storeOrderSearch");
		
		return mav;
	}
	
	
	@RequestMapping("/orderSearchResult.smdo")
	public ModelAndView getOrderSearchReuslt(ModelAndView mav, HttpSession session, SalesVO vo) {
		System.out.println("주문 검색 결과 열기");
		String storename = (String)session.getAttribute("storename");
		List<SalesVO> storeorderlist = salesStatusService.getSalesList(vo);
		
		mav.addObject("startdate", vo.getStartdate());//세션
		mav.addObject("enddate", vo.getEnddate());//세션
		mav.addObject("storeorderlist", storeorderlist);
		mav.setViewName("/order/storeOrderSearch");
		
		return mav;
	}
	
	@RequestMapping(value="/updateOrderList.smdo", method=RequestMethod.POST)
	@ResponseBody
	public String updateOrderList(@RequestBody Map<String, Object> param, StoreOrderListVO vo) {
		System.out.println("주문상태 수정");
		
		String status = (String)param.get("status");
		String orderseq = (String)param.get("orderseq");
		
		vo.setStatus(status);
		vo.setOrderseq(orderseq);
		
		storeOrderListService.updateOrderList(vo);
		return "success";
	}
}
