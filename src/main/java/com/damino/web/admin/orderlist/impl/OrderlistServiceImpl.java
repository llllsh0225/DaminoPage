package com.damino.web.admin.orderlist.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.damino.web.admin.orderlist.OrderlistDAO;
import com.damino.web.admin.orderlist.OrderlistService;
import com.damino.web.admin.orderlist.OrderlistVO;

@Service("orderlistService")
public class OrderlistServiceImpl implements OrderlistService {
	
	@Autowired
	private OrderlistDAO orderlistDAO;
	//OrderlistDAO ����.


	@Override
	public List<OrderlistVO> getOrderlistInv() {
		System.out.println("OrderServiceImpl getOrderlistInv()");
		return orderlistDAO.getOrderlistInv(); //DAO��ü�� �޼ҵ� ����
	}

}

