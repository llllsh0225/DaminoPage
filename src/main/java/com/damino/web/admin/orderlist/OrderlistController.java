package com.damino.web.admin.orderlist;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class OrderlistController {
	@Autowired
	private OrderlistService orderlistService;

	@RequestMapping("/orderList.admdo")
	public ModelAndView getOrderlistInv(ModelAndView mav) {
		System.out.println("주문 내역");
		List<OrderlistVO> orderlistInv = orderlistService.getOrderlistInv();
		//service객체의 메서드 수행
		System.out.println(orderlistInv.toString());

		mav.setViewName("/store_sales/orderList"); //이동할 viewname
		mav.addObject("orderlistInv", orderlistInv); //modelandview 객체가 orderlistinv객체를 물고감
		return mav;
	}

}
