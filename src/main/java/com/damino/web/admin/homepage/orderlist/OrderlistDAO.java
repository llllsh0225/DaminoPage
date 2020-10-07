package com.damino.web.admin.homepage.orderlist;

import java.util.List;

public interface OrderlistDAO {
	public List<OrderlistVO> getOrderlistInv();
	
	public int orderCount();
}
