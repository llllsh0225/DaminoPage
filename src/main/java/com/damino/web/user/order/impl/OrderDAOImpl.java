package com.damino.web.user.order.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.damino.web.user.order.DeliveryAddressVO;
import com.damino.web.user.order.OrderDAO;
import com.damino.web.user.order.StoreAddressVO;

@Repository("orderDAO")
public class OrderDAOImpl implements OrderDAO {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public List<DeliveryAddressVO> getDeliveryAddressList(String userid) {
		System.out.println("사용자가 지정한 배달주소 리스트 불러오기");
		return sqlSessionTemplate.selectList("OrderDAO.getDeliveryAddressList", userid);
	}

	@Override
	public void insertDeliveryAddress(DeliveryAddressVO vo) {
		System.out.println("배달지 주소 insert");
		sqlSessionTemplate.insert("OrderDAO.insertDeliveryAddress", vo);
	}

	@Override
	public void deleteDeliveryAddress(DeliveryAddressVO vo) {
		System.out.println("배달지 주소 delete");
		sqlSessionTemplate.delete("OrderDAO.deleteDeliveryAddress", vo);
	}

	@Override
	public List<StoreAddressVO> getStoreAddressList(String userid) {
		System.out.println("사용자가 지정한 포장매장 리스트 불러오기");
		return sqlSessionTemplate.selectList("OrderDAO.getStoreAddressList", userid);
	}

	@Override
	public void insertStoreAddress(StoreAddressVO vo) {
		System.out.println("포장매장 추가");
		sqlSessionTemplate.insert("OrderDAO.insertStoreAddress", vo);
	}

}
