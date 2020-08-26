package com.damino.web.admin.salesstatus;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class SalesStatusController {

	@Autowired
	private SalesStatusService salesStatusService;
	
	@RequestMapping(value="/salesStatus.admdo",  method=RequestMethod.GET)
	public ModelAndView getAdminSalesStatusPage(ModelAndView mav, SalesVO vo) {
		System.out.println("���� ��Ȳ ������ ����");
		
		int maleCount = salesStatusService.getCountM();
		int femaleCount = salesStatusService.getCountF();
		System.out.println("���� ���� �� : " + maleCount + "�� , ���� ������ �� : " + femaleCount + "��");
		
		int orderPrice = salesStatusService.getOrderPrice();//��ü �ֹ��ݾ�
		System.out.println("��ü �ֹ� �ݾ� :" + orderPrice);
		
		List<SalesVO> monthly = salesStatusService.getMonthly();//�ֹ������� �ִ� �ֱ� 12���� yyyy-mm���·� ��������(��Ʈ x��)
		System.out.println("�ֹ������� �ִ� �ֱ� 12���� : " + monthly);
		
		List<SalesVO> monthlySales = salesStatusService.getMonthlySales();//�ֹ������� �ִ� �ֱ� 12���� ���� ����� ������(��Ʈ y��)
		System.out.println("�ֹ������� �ִ� �ֱ� 12���� ����� :" + monthlySales);
		
		mav.addObject("maleCount" , maleCount);
		mav.addObject("femaleCount", femaleCount);
		mav.addObject("orderPrice", orderPrice);
		mav.addObject("monthly", monthly);
		mav.addObject("monthlySales", monthlySales);
		mav.setViewName("/store_sales/salesStatus");
		
		return mav;
	}
}
