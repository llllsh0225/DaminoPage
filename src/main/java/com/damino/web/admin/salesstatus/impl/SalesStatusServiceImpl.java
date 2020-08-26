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
		System.out.println("## Chart 남성 Service..");
		return salesStatusDAO.getCountM();
	}

	@Override
	public int getCountF() {
		System.out.println("## Chart 여성 Service..");
		return salesStatusDAO.getCountF();
	}

	@Override
	public int getOrderPrice() {
		return salesStatusDAO.getOrderPrice();
	}

	@Override
	public List<SalesVO> getMonthly() {
		return salesStatusDAO.getMonthly();
	}

	@Override
	public List<SalesVO> getMonthlySales() {
		return salesStatusDAO.getMonthlySales();
	}

}
