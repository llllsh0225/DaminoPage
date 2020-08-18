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
	public ModelAndView getOrderlistInv() {
		System.out.println("주문 내역");
		List<OrderlistVO> orderlistInv = orderlistService.getOrderlistInv();
		//service객체의 메서드 수행
		System.out.println(orderlistInv.toString());

		ModelAndView mav = new ModelAndView();
		mav.setViewName("/store_sales/orderList"); //이동할 viewname
		mav.addObject("orderlistInv", orderlistInv); //modelandview 객체가 orderlistinv객체를 물고감
		return mav;
	}

	@RequestMapping("/orderstatusReceive.do")
	public ModelAndView getOrderStatusReceive() {
		System.out.println("주문이 접수되었습니다 페이지");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/order/order_status_receive");
		return mav;
	}
	
	@RequestMapping("/orderstatusCook.do")
	public ModelAndView getOrderStatusCook() {
		System.out.println("요리중->배달중->배달완료 페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/order/order_status_cook");
		return mav;
	}
	
	@RequestMapping("/orderstatusDelivery.do")
	public ModelAndView getOrderStatusDelivery() {
		System.out.println("배달 위치 페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/order/order_status_delivery");
		return mav;
	}
	
	@RequestMapping("/orderstatusdeliveryDone.do")
	public ModelAndView getOrderStatusDeliveryDone() {
		System.out.println("안전하게 전달하였습니다 페이지");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/order/order_status_deliveryDone");
		return mav;
	}
	
}
