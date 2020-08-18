package com.damino.web.user.orderlist.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.damino.web.user.orderlist.MyOrderListDAO;
import com.damino.web.user.orderlist.MyOrderListService;
import com.damino.web.user.orderlist.MyOrderListVO;

@Service("myOrderListService")
public class MyOrderListServiceImpl implements MyOrderListService{
	@Autowired
	private MyOrderListDAO myOrderListDAO;
	
	@Override
	public List<MyOrderListVO> getMyOrderList(String userid) {
		System.out.println("MyOrderListServiceImpl getMyOrderList()");
		return myOrderListDAO.getMyOrderList(userid);
	}

}
