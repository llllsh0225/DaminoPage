package com.damino.web.user.order;

import java.util.List;

public interface OrderDAO {
	// --------------- 배달주문 메서드 --------------------
	public List<DeliveryAddressVO> getDeliveryAddressList(String userid); // 사용자가 지정한 배달주소 목록 조회
	public void insertDeliveryAddress(DeliveryAddressVO vo); // 배달지 주소 insert
}
