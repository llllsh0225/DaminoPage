package com.damino.web.admin.salesstatus;

import java.util.List;

public interface SalesStatusService {
	public int getCountM();
	public int getCountF();
	public int getOrderPrice();
	public List<SalesVO> getDaily();
	public List<SalesVO> getDailyCount();
// ======= ¤¤main =======	
	public List<SalesVO> getMonthly();
	public List<SalesVO> getMonthlySales();
	public List<SalesVO> getYearly();
	public List<SalesVO> getYearlySales();
	public List<SalesVO> getSalesList(SalesVO vo);
	public List<SalesVO> getDateSearch(SalesVO vo);
	public List<SalesVO> getSalesSearch(SalesVO vo);
	public List<SalesVO> getCountSearch(SalesVO vo);
}
