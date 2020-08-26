package com.damino.web.admin.salesstatus;

import java.util.List;

public interface SalesStatusDAO {
	public int getCountM();
	public int getCountF();
	public int getOrderPrice();
	public List<SalesVO> getMonthly();
	public List<SalesVO> getMonthlySales();
}
