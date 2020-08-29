package com.damino.web.user.orderlist.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.damino.web.user.board.paging.Paging;
import com.damino.web.user.orderlist.MyOrderListDAO;
import com.damino.web.user.orderlist.MyOrderListService;
import com.damino.web.user.orderlist.MyOrderListVO;

@Service("myOrderListService")
public class MyOrderListServiceImpl implements MyOrderListService{
	@Autowired
	private MyOrderListDAO myOrderListDAO;

	@Override
	public MyOrderListVO getOrderView(MyOrderListVO vo) {
		System.out.println("MyOrderListServiceImpl getOrderView");
		return myOrderListDAO.getOrderView(vo);
	}

	@Override
	public List<MyOrderListVO> getMyOrderList(Paging pa) {
		System.out.println("MyOrderListServiceImpl getMyOrderList(pa)");
		return myOrderListDAO.getMyOrderList(pa);
	}

}
