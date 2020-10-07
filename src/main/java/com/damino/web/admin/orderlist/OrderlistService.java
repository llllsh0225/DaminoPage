package com.damino.web.admin.orderlist;

import java.util.List;

public interface OrderlistService {
	public List<OrderlistVO> getOrderlistInv();
	
	public int orderCount();
}
