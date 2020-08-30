package com.damino.web.admin.salesstatus.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.damino.web.admin.salesstatus.SalesStatusDAO;
import com.damino.web.admin.salesstatus.SalesStatusService;
import com.damino.web.admin.salesstatus.SalesVO;

@Service("salesStatusService")
public class SalesStatusServiceImpl implements SalesStatusService {

	@Autowired
	private SalesStatusDAO salesStatusDAO;
	
	@Override
	public int getCountM() {
		System.out.println("## Chart ���� Service..");
		return salesStatusDAO.getCountM();
	}

	@Override
	public int getCountF() {
		System.out.println("## Chart ���� Service..");
		return salesStatusDAO.getCountF();
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
// ======= ��main =======--------------------------------------------------------	

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



	

}
