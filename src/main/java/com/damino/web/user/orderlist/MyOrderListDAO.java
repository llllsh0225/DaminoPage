package com.damino.web.user.orderlist;

import java.util.List;

import com.damino.web.user.board.paging.Paging;

public interface MyOrderListDAO {
	public List<MyOrderListVO> getMyOrderList(Paging pa);
	public MyOrderListVO getOrderView(MyOrderListVO vo);
}
