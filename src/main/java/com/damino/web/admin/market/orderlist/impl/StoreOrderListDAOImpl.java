package com.damino.web.admin.market.orderlist.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.damino.web.admin.market.orderlist.StoreOrderListDAO;
import com.damino.web.admin.market.orderlist.StoreOrderListVO;

@Repository("storeOrderListDAO")
public class StoreOrderListDAOImpl implements StoreOrderListDAO{
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	@Override
	public List<StoreOrderListVO> getStoreOrderList(String storename) {
		System.out.println("StoreOrderListDAO getStoreOrderList()");
		return sqlSessionTemplate.selectList("OrderlistDAO.getStoreOrderList", storename);
	}

	@Override
	public void updateOrderList(StoreOrderListVO vo) {
		System.out.println("StoreOrderListDAOImpl updateOrderList(vo)");
		sqlSessionTemplate.update("OrderlistDAO.updateOrderList", vo);
	}
	
	
}
