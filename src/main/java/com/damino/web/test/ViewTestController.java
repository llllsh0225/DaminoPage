package com.damino.web.test;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ViewTestController {
	@RequestMapping("/main.admdo")
	public ModelAndView getAdminMainPage() {
		System.out.println("���������� ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/main");
		
		return mav;
	}
	
	@RequestMapping("/main.do")
	public ModelAndView getMainPage() {
		System.out.println("���������� ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/main");
		
		return mav;
	}
	@RequestMapping("/quickOrdermain.do")
	public ModelAndView getQuickOrderPage() {
		System.out.println("������������ ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/quickorder/quickOrdermain");
		
		return mav;
	}

	@RequestMapping("/basketdetail.do")
	public ModelAndView getBasketDetailPage() {
		System.out.println("��ٱ��� �������� ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/basket/basket-detail");
		return mav;
	}
	
	@RequestMapping("/basketempty.do")
	public ModelAndView getBasketEmptyPage() {
		System.out.println("�� ��ٱ��� ������ ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/basket/basket-empty");
		return mav;
	}
	
	@RequestMapping("/mania.do")
	public ModelAndView getManiaPage() {
		System.out.println("�ŴϾ� ������ ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/service/mania");
		return mav;
	}
	
	@RequestMapping("/law.do")
	public ModelAndView getLawPage() {
		System.out.println("�̿��� ������ ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/terms/law");
		return mav;
	}
	
	@RequestMapping("/privacy.do")
	public ModelAndView getPrivacyPage() {
		System.out.println("�������� ó����ħ ������ ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/terms/privacy");
		return mav;
	}
	
	@RequestMapping("/quickOrderDefaultSet.do")
	public ModelAndView getQuickOrderDefault() {
		System.out.println("������ ����Ʈ ���������� ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/quickorder/quickOrder_defaultSetting");
		
		return mav;
	}
	
	@RequestMapping("/orderPage.do")
	public ModelAndView getOrderPage() {
		System.out.println("�����ϱ� ������ ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/order/order_page");
		return mav;
	}
	
	@RequestMapping("/orderorderDone.do")
	public ModelAndView getOrderOrderDone() {
		System.out.println("�����Ϸ� ������");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/order/order_orderDone");
		return mav;
	}
	
	@RequestMapping("/orderpage2.do")
	public ModelAndView getOrderPageTwo() {
		System.out.println("�����ϱ� ������2 ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/order/order_page2");
		return mav;
	}
	
	@RequestMapping("/findidpw.do")
	public ModelAndView getFindIdPw() {
		System.out.println("���̵�/��й�ȣ ã�� ������ ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/userinfo/find_id_pw");
		return mav;
	}
	
	@RequestMapping("/changeinfo.do")
	public ModelAndView getChangeInfo() {
		System.out.println("ȸ�� �������� ������ ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/userinfo/change_info");
		return mav;
	}
	
	@RequestMapping("/signup1.do")
	public ModelAndView getSignUp1() {
		System.out.println("ȸ������ ������ ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/userinfo/sign_up_1");
		return mav;
	}
	
	@RequestMapping("/userinfoconfirm.do")
	public ModelAndView getUserInfoConfirm() {
		System.out.println("ȸ�� ���ο��� Ȯ�� ������ ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/userinfo/user_info_confirm");
		return mav;
	}
	
	@RequestMapping("/withdrawal.do")
	public ModelAndView getWithdrawal() {
		System.out.println("ȸ��Ż�� ������ ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/userinfo/withdrawal");
		return mav;
	}
	
	@RequestMapping("/orderpage3.do")
	public ModelAndView getOrderPageThree() {
		System.out.println("�ֹ��Ϸ� ������ ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/order/order_page3");
		return mav;
	}
	
	@RequestMapping("/orderstatusCook.do")
	public ModelAndView getOrderStatusCook() {
		System.out.println("�丮��->�����->��޿Ϸ� ������ ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/order/order_status_cook");
		return mav;
	}
	
	@RequestMapping("/orderstatusDelivery.do")
	public ModelAndView getOrderStatusDelivery() {
		System.out.println("��� ��ġ ������ ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/order/order_status_delivery");
		return mav;
	}
}
