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
		System.out.println("�ֹ� ����");
		List<OrderlistVO> orderlistInv = orderlistService.getOrderlistInv();
		//service��ü�� �޼��� ����
		System.out.println(orderlistInv.toString());

		mav.setViewName("/store_sales/orderList"); //�̵��� viewname
		mav.addObject("orderlistInv", orderlistInv); //modelandview ��ü�� orderlistinv��ü�� ����
		return mav;
	}

}
