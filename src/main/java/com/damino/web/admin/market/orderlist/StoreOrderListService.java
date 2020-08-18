package com.damino.web.admin.market.orderlist;

import java.util.List;

public interface StoreOrderListService {
	public List<StoreOrderListVO> getStoreOrderList();
	public void updateOrderList(StoreOrderListVO vo);
}
