package com.damino.web.user.orderlist;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MyOrderListController {
	@Autowired
	private MyOrderListService myOrderListService;
	
	@RequestMapping("/myorderlist.do")
	public ModelAndView getMyOrderList(ModelAndView mav, HttpSession session) {
		System.out.println("내 주문현황 열기");
		String userid=(String)session.getAttribute("userid");
		
		List<MyOrderListVO> myOrderList = myOrderListService.getMyOrderList(userid);
		System.out.println(myOrderList);
		mav.addObject("myOrderList", myOrderList);
		mav.setViewName("/mypage/myOrderList");
		
		return mav;
	}
}
