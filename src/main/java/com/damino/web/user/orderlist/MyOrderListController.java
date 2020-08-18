package com.damino.web.user.orderlist;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MyOrderListController {
	@Autowired
	private MyOrderListService myOrderListService;
	
	@RequestMapping("/myorderlist.do")
	public ModelAndView getMyOrderList() {
		System.out.println("내 주문현황 열기");
		List<MyOrderListVO> myOrderList = myOrderListService.getMyOrderList();
		System.out.println(myOrderList);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/mypage/myOrderList");
		mav.addObject("myOrderList", myOrderList);
		return mav;
	}
}
