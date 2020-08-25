package com.damino.web.admin.orderlist.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import com.damino.web.admin.orderlist.OrderlistDAO;
import com.damino.web.admin.orderlist.OrderlistVO;

@Repository("orderlistDAO") 
public class OrderlistDAOImpl implements OrderlistDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	@Override
	public List<OrderlistVO> getOrderlistInv() {
		System.out.println("OrderlistDAOImpl getOrderlistInv()");
		return sqlSessionTemplate.selectList("OrderlistDAO.getOrderlistInv");
	}

	@Override
	public int orderCount() {
		System.out.println("-- ÃÑ ÁÖ¹®°Ç¼ö -- [dao]");
		return sqlSessionTemplate.selectOne("OrderlistDAO.getOrderCount");
	}

}
