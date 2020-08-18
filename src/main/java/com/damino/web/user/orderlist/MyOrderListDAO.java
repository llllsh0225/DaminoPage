package com.damino.web.user.orderlist;

import java.util.List;

public interface MyOrderListDAO {
	public List<MyOrderListVO> getMyOrderList(String userid);
}
