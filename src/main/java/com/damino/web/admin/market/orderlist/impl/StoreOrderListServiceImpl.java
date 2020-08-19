package com.damino.web.admin.market.orderlist.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.damino.web.admin.market.orderlist.StoreOrderListDAO;
import com.damino.web.admin.market.orderlist.StoreOrderListService;
import com.damino.web.admin.market.orderlist.StoreOrderListVO;

@Service("storeOrderListService")
public class StoreOrderListServiceImpl implements StoreOrderListService{
	@Autowired
	private StoreOrderListDAO storeOrderListDAO;
	
	@Override
	public List<StoreOrderListVO> getStoreOrderList() {
		System.out.println("StoreOrderListService getStoreOrderList()");
		return storeOrderListDAO.getStoreOrderList();
	}

	@Override
	public void updateOrderList(StoreOrderListVO vo) {
		System.out.println("StoreOrderListServiceImpl updateOrderList(vo)");
		storeOrderListDAO.updateOrderList(vo);
	}

}
