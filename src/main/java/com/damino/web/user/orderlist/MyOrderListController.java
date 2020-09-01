package com.damino.web.user.orderlist;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.damino.web.user.board.paging.PageMaker;
import com.damino.web.user.board.paging.Paging;

@Controller
public class MyOrderListController {
	@Autowired
	private MyOrderListService myOrderListService;
	
	@RequestMapping("/myorderlist.do")
	public ModelAndView getMyOrderList(ModelAndView mav, HttpSession session, Paging pa) {
		System.out.println("�� �ֹ���Ȳ ����");
		String userid=(String)session.getAttribute("userid");
		
		if (userid == null) {
			mav.setViewName("/login/login");
		} else {
			session.setAttribute("msg", "login");
			
			//����¡ ó���� ���� pa ������ ����
			pa.setWriterId(userid);
			List<MyOrderListVO> myOrderList = myOrderListService.getMyOrderList(pa);
			System.out.println(myOrderList);
			
			PageMaker pageMaker = new PageMaker();
			pageMaker.setPa(pa);
			
			mav.addObject("pageMaker", pageMaker);
			mav.addObject("myOrderList", myOrderList);
			mav.setViewName("/mypage/myOrderList");
		}
		
		return mav;
	}

	@RequestMapping(value="/orderStatus.do", method=RequestMethod.GET)
	public ModelAndView getOrderStatusReceive(ModelAndView mav, MyOrderListVO vo, HttpSession session) {
		System.out.println("�ֹ� ���� ������");
		String userid=(String)session.getAttribute("userid");
		
		if (userid == null) {
			mav.setViewName("/login/login");
		}
		else {
			session.setAttribute("msg", "login");
			
			MyOrderListVO orderview = myOrderListService.getOrderView(vo);
			System.out.println(orderview);
			mav.setViewName("/order/orderStatus");
			mav.addObject("orderview", orderview);
		}
		return mav;
	}
	
	
}
