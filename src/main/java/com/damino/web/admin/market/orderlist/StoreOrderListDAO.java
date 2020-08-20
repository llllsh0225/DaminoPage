package com.damino.web.admin.market.orderlist;

import java.util.List;

public interface StoreOrderListDAO {
	public List<StoreOrderListVO> getStoreOrderList(String storename);
	public void updateOrderList(StoreOrderListVO vo);
}
