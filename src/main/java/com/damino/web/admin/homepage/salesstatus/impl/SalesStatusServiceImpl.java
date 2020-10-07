package com.damino.web.admin.homepage.salesstatus.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.damino.web.admin.homepage.salesstatus.SalesStatusDAO;
import com.damino.web.admin.homepage.salesstatus.SalesStatusService;
import com.damino.web.admin.homepage.salesstatus.SalesVO;

@Service("salesStatusService")
public class SalesStatusServiceImpl implements SalesStatusService {

	@Autowired
	private SalesStatusDAO salesStatusDAO;

	// ======= main =======--------------------------------------------------------	
	@Override
	public int getCountM() {
		System.out.println("## Chart 남성 Service..");
		return salesStatusDAO.getCountM();
	}

	@Override
	public int getCountF() {
		System.out.println("## Chart 여성 Service..");
		return salesStatusDAO.getCountF();
	}
	@Override
	public int getTogo() {
		System.out.println("## Chart 포장 Service..");
		return salesStatusDAO.getTogo();
	}

	@Override
	public int getDelivery() {
		System.out.println("## Chart 배달 Service..");
		return salesStatusDAO.getDelivery();
	}
	@Override
	public int getOrderPrice() {
		return salesStatusDAO.getOrderPrice();
	}
	
	@Override
	public List<SalesVO> getDaily() {
		
		return salesStatusDAO.getDaily();
	}

	@Override
	public List<SalesVO> getDailyCount() {
		
		return salesStatusDAO.getDailyCount();
	}


	// 홈페이지 관리자 매출현황
	@Override
	public List<SalesVO> getMonthly() {
		return salesStatusDAO.getMonthly();
	}

	@Override
	public List<SalesVO> getMonthlySales() {
		return salesStatusDAO.getMonthlySales();
	}

	@Override
	public List<SalesVO> getYearly() {
		return salesStatusDAO.getYearly();
	}

	@Override
	public List<SalesVO> getYearlySales() {
		return salesStatusDAO.getYearlySales();
	}

	@Override
	public List<SalesVO> getSalesList(SalesVO vo) {
		return salesStatusDAO.getSalesList(vo);
	}
	
	@Override
	public List<SalesVO> getDateSearch(SalesVO vo) {
		return salesStatusDAO.getDateSearch(vo);
	}
	
	@Override
	public List<SalesVO> getSalesSearch(SalesVO vo) {
		return salesStatusDAO.getSalesSearch(vo);
	}

	@Override
	public List<SalesVO> getCountSearch(SalesVO vo) {
		return salesStatusDAO.getCountSearch(vo);
	}
	
	
	// 매장 관리자 매출현황
	@Override
	public List<SalesVO> getStoreMonthly(SalesVO vo) {
		return salesStatusDAO.getStoreMonthly(vo);
	}

	@Override
	public List<SalesVO> getStoreMonthlySales(SalesVO vo) {
		return salesStatusDAO.getStoreMonthlySales(vo);
	}

	@Override
	public List<SalesVO> getStoreYearly(SalesVO vo) {
		return salesStatusDAO.getStoreYearly(vo);
	}

	@Override
	public List<SalesVO> getStoreYearlySales(SalesVO vo) {
		return salesStatusDAO.getStoreYearlySales(vo);
	}

	@Override
	public List<SalesVO> getStoreMonthlyCount(SalesVO vo) {
		return salesStatusDAO.getStoreMonthlyCount(vo);
	}

	@Override
	public List<SalesVO> getStoreYearlyCount(SalesVO vo) {
		return salesStatusDAO.getStoreYearlyCount(vo);
	}

	@Override
	public List<SalesVO> getStoreSalesList(SalesVO vo) {
		return salesStatusDAO.getStoreSalesList(vo);
	}

	@Override
	public int lastMonthSales() {
		return salesStatusDAO.lastMonthSales();
	}

	@Override
	public int prevLastMonthSales() {
		return salesStatusDAO.prevLastMonthSales();
	}


}
