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
		System.out.println("����ڰ� ������ ����ּ� ����Ʈ �ҷ�����");
		return sqlSessionTemplate.selectList("OrderDAO.getDeliveryAddressList", userid);
	}

	@Override
	public void insertDeliveryAddress(DeliveryAddressVO vo) {
		System.out.println("����� �ּ� insert");
		sqlSessionTemplate.insert("OrderDAO.insertDeliveryAddress", vo);
	}

	@Override
	public void deleteDeliveryAddress(DeliveryAddressVO vo) {
		System.out.println("����� �ּ� delete");
		sqlSessionTemplate.delete("OrderDAO.deleteDeliveryAddress", vo);
	}

	@Override
	public List<StoreAddressVO> getStoreAddressList(String userid) {
		System.out.println("����ڰ� ������ ������� ����Ʈ �ҷ�����");
		return sqlSessionTemplate.selectList("OrderDAO.getStoreAddressList", userid);
	}

	@Override
	public void insertStoreAddress(StoreAddressVO vo) {
		System.out.println("������� �߰�");
		sqlSessionTemplate.insert("OrderDAO.insertStoreAddress", vo);
	}

}
