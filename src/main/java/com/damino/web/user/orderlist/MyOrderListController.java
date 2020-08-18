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
	
	@RequestMapping(value="/myorderlist.do", method= {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView getMyOrderList(ModelAndView mav, MyOrderListVO vo) {
		System.out.println("내 주문현황 열기");
		List<MyOrderListVO> myOrderList = myOrderListService.getMyOrderList(vo);
		System.out.println(myOrderList);
		mav.setViewName("/mypage/myOrderList");
		mav.addObject("myOrderList", myOrderList);
		return mav;
	}
}
