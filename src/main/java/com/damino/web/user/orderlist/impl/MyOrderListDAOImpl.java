package com.damino.web.user.orderlist.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.damino.web.user.board.paging.Paging;
import com.damino.web.user.orderlist.MyOrderListDAO;
import com.damino.web.user.orderlist.MyOrderListVO;

@Repository("myOrderListDAO")
public class MyOrderListDAOImpl implements MyOrderListDAO{
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	@Override
	public MyOrderListVO getOrderView(MyOrderListVO vo) {
		System.out.println("MyOrderListDAOImpl getOrderView(vo)");
		return sqlSessionTemplate.selectOne("OrderlistDAO.getOrderView", vo);
	}

	@Override
	public List<MyOrderListVO> getMyOrderList(Paging pa) {
		System.out.println("MyOrderListDAOImpl getMyOrderList(pa)");
		return sqlSessionTemplate.selectList("OrderlistDAO.getMyOrderList", pa);
	}

}
