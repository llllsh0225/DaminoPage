package com.damino.web.user.order;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class OrderController {

	@RequestMapping("/getOrderPage.do")
	public ModelAndView getOrderPage(ModelAndView mav) {
		System.out.println("���/�����ֹ� ������ ����");
		
		mav.setViewName("order/orderGubun");
		return mav;
	}
}
