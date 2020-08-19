package com.damino.web.user.orderlist;

import java.util.List;

public interface MyOrderListService {
	public List<MyOrderListVO> getMyOrderList(String userid);
	public MyOrderListVO getOrderView(MyOrderListVO vo);
}
