package com.damino.web.user.order.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.damino.web.user.order.DeliveryAddressVO;
import com.damino.web.user.order.OrderDAO;
import com.damino.web.user.order.OrderService;
import com.damino.web.user.order.StoreAddressVO;

@Service("orderService")
public class OrderServiceImpl implements OrderService {

	@Autowired
	private OrderDAO orderDAO;
	
	@Override
	public List<DeliveryAddressVO> getDeliveryAddressList(String userid) {
		return orderDAO.getDeliveryAddressList(userid);
	}

	@Override
	public void insertDeliveryAddress(DeliveryAddressVO vo) {
		orderDAO.insertDeliveryAddress(vo);
	}

	@Override
	public void deleteDeliveryAddress(DeliveryAddressVO vo) {
		orderDAO.deleteDeliveryAddress(vo);
	}

	@Override
	public List<StoreAddressVO> getStoreAddressList(String userid) {
		return orderDAO.getStoreAddressList(userid);
	}

	@Override
	public void insertStoreAddress(StoreAddressVO vo) {
		orderDAO.insertStoreAddress(vo);
	}

	@Override
	public void deleteStoreAddress(StoreAddressVO vo) {
		orderDAO.deleteStoreAddress(vo);
	}

}
