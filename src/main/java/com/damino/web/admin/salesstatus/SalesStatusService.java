package com.damino.web.admin.salesstatus;

import java.util.List;

public interface SalesStatusService {
	// ======= 홈페이지 관리자main =======	
	public int getCountM();
	public int getCountF();
	public int getOrderPrice();
	public List<SalesVO> getDaily();
	public List<SalesVO> getDailyCount();
	
	// 홈페이지 관리자 매출현황
	public List<SalesVO> getMonthly();
	public List<SalesVO> getMonthlySales();
	public List<SalesVO> getYearly();
	public List<SalesVO> getYearlySales();
	public List<SalesVO> getSalesList(SalesVO vo);
	public List<SalesVO> getDateSearch(SalesVO vo);
	public List<SalesVO> getSalesSearch(SalesVO vo);
	public List<SalesVO> getCountSearch(SalesVO vo);
	
	// 매장 관리자 매출현황
	public List<SalesVO> getStoreMonthly(SalesVO vo);
	public List<SalesVO> getStoreMonthlySales(SalesVO vo);
	public List<SalesVO> getStoreMonthlyCount(SalesVO vo);
	public List<SalesVO> getStoreYearly(SalesVO vo);
	public List<SalesVO> getStoreYearlySales(SalesVO vo);
	public List<SalesVO> getStoreYearlyCount(SalesVO vo);
	public List<SalesVO> getStoreSalesList(SalesVO vo);
}
