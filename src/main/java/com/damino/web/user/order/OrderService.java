package com.damino.web.user.order;

import java.util.List;

public interface OrderService {
	// --------------- 배달주문 서비스 --------------------
	public List<DeliveryAddressVO> getDeliveryAddressList(String userid); // 사용자가 지정한 배달주소 목록 조회
	public void insertDeliveryAddress(DeliveryAddressVO vo); // 배달지 주소 insert
	public void deleteDeliveryAddress(DeliveryAddressVO vo); // 배달지 주소 delete

	// --------------- 포장주문 서비스 --------------------
	public List<StoreAddressVO> getStoreAddressList(String userid); // 사용자가 지정한 포장매장 목록 조회
	public void insertStoreAddress(StoreAddressVO vo);
}
