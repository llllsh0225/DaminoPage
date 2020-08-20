package com.damino.web.user.order;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class OrderController {

	@RequestMapping("/getOrderPage.do")
	public ModelAndView getOrderPage(ModelAndView mav, HttpSession session) {
		System.out.println("���/�����ֹ� ������ ����");
		
		String userid = (String) session.getAttribute("userid");
		
		mav.setViewName("order/orderGubun");
		return mav;
	}
}
