package com.damino.web.user.order;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class OrderController {

	@RequestMapping("/getOrderPage.do")
	public ModelAndView getOrderPage(ModelAndView mav) {
		System.out.println("배달/포장주문 페이지 열기");
		
		mav.setViewName("order/orderGubun");
		return mav;
	}
}
