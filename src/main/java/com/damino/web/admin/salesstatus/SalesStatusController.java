package com.damino.web.admin.salesstatus;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

@Controller
@SessionAttributes({"startdate","enddate","maleCount","femaleCount","orderPrice","monthly","monthlySales","yearly","yearlySales"})
public class SalesStatusController {

	@Autowired
	private SalesStatusService salesStatusService;
	
	@RequestMapping(value="/salesStatus.admdo",  method=RequestMethod.GET)
	public ModelAndView getAdminSalesStatusPage(ModelAndView mav, SalesVO vo, HttpSession session) {
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
		
		List<SalesVO> yearly = salesStatusService.getYearly();//�ֹ������� �ִ� �ֱ� 5�� yyyy���·� ��������(��Ʈ x��)
		System.out.println("�ֹ������� �ִ� �ֱ� 5�� : " + yearly);
		
		List<SalesVO> yearlySales = salesStatusService.getYearlySales();//�ֹ������� �ִ� �ֱ� 12���� ���� ����� ������(��Ʈ y��)
		System.out.println("�ֹ������� �ִ� �ֱ� 5�� ����� :" + yearlySales);
		
		mav.addObject("maleCount" , maleCount);
		mav.addObject("femaleCount", femaleCount);
		mav.addObject("orderPrice", orderPrice);
		mav.addObject("monthly", monthly);
		mav.addObject("monthlySales", monthlySales);
		mav.addObject("yearly", yearly);
		mav.addObject("yearlySales", yearlySales);
		mav.setViewName("/store_sales/salesStatus");
		
		return mav;
	}
	
	@RequestMapping(value="/searchSales.admdo",  method=RequestMethod.POST)
	public ModelAndView getAdminSearchSales(ModelAndView mav, SalesVO vo) {
		System.out.println(vo.getOrderdate());
		List<SalesVO> salesList = salesStatusService.getSalesList(vo);//�ֹ�����
		System.out.println("�ֹ����� : " + salesList);
		
		System.out.println(vo.getStartdate());
		System.out.println(vo.getEnddate());
		
		List<SalesVO> dateSearch = salesStatusService.getDateSearch(vo);
		System.out.println(dateSearch);//�˻��Ⱓ ��¥ �Ϻ��� ����Ʈ ����
		
		List<SalesVO> salesSearch = salesStatusService.getSalesSearch(vo);
		System.out.println(salesSearch);//�˻��Ⱓ �Ϻ��� ����� ����Ʈ ����
		
		List<SalesVO> countSearch = salesStatusService.getCountSearch(vo);
		System.out.println(countSearch);
		
		mav.addObject("startdate", vo.getStartdate());//����
		mav.addObject("enddate", vo.getEnddate());//����
		mav.addObject("salesList", salesList);
		mav.addObject("dateSearch", dateSearch);
		mav.addObject("salesSearch", salesSearch);
		mav.addObject("countSearch", countSearch);
		mav.setViewName("/store_sales/salesStatus");
		return mav;
	}
	
	//���������
	@RequestMapping("/statistics_list.smdo")
	public ModelAndView getStatistics_listPage(ModelAndView mav, SalesVO vo, HttpSession session) {
		System.out.println("���� ��Ȳ ������ ����");
		
		List<SalesVO> storeMonthly = salesStatusService.getStoreMonthly(vo);//�ش� ���� �ֹ������� �ִ� �ֱ� 12���� yyyy-mm���·� ��������(��Ʈ x��)
		System.out.println("�ش� ���� �ֹ������� �ִ� �ֱ� 12���� : " + storeMonthly);
		
		List<SalesVO> storeMonthlySales = salesStatusService.getStoreMonthlySales(vo);//�ش� ���� �ֹ������� �ִ� �ֱ� 12���� ���� ����� ������(��Ʈ y��)
		System.out.println("�ش� ���� �ֹ������� �ִ� �ֱ� 12���� ����� :" + storeMonthlySales);
		
		List<SalesVO> storeYearly = salesStatusService.getStoreYearly(vo);//�ش� ���� �ֹ������� �ִ� �ֱ� 12���� yyyy-mm���·� ��������(��Ʈ x��)
		System.out.println("�ش� ���� �ֹ������� �ִ� �ֱ� 5��: " + storeYearly);
		
		List<SalesVO> storeYearlySales = salesStatusService.getStoreYearlySales(vo);//�ش� ���� �ֹ������� �ִ� �ֱ� 12���� ���� ����� ������(��Ʈ y��)
		System.out.println("�ش� ���� �ֹ������� �ִ� �ֱ� 5�� ����� :" + storeYearlySales);
		
		mav.addObject("storeMonthly", storeMonthly);
		mav.addObject("storeMonthlySales", storeMonthlySales);
		mav.addObject("storeYearly", storeYearly);
		mav.addObject("storeYearlySales", storeYearlySales);
		
		mav.setViewName("/statistics/statistics_list");
		
		return mav;
	}
	
	@RequestMapping(value="/searchSales.smdo",  method=RequestMethod.POST)
	public ModelAndView getStoreSearchSales(ModelAndView mav, SalesVO vo) {
		System.out.println(vo.getOrderdate());
		List<SalesVO> salesList = salesStatusService.getSalesList(vo);//�ֹ�����
		System.out.println("�ֹ����� : " + salesList);
		
		System.out.println(vo.getStartdate());
		System.out.println(vo.getEnddate());
		
		List<SalesVO> dateSearch = salesStatusService.getDateSearch(vo);
		System.out.println(dateSearch);//�˻��Ⱓ ��¥ �Ϻ��� ����Ʈ ����
		
		List<SalesVO> salesSearch = salesStatusService.getSalesSearch(vo);
		System.out.println(salesSearch);//�˻��Ⱓ �Ϻ��� ����� ����Ʈ ����
		
		List<SalesVO> countSearch = salesStatusService.getCountSearch(vo);
		System.out.println(countSearch);
		
		mav.addObject("startdate", vo.getStartdate());//����
		mav.addObject("enddate", vo.getEnddate());//����
		mav.addObject("salesList", salesList);
		mav.addObject("dateSearch", dateSearch);
		mav.addObject("salesSearch", salesSearch);
		mav.addObject("countSearch", countSearch);
		mav.setViewName("/statistics/statistics_list");
		return mav;
	}
}
