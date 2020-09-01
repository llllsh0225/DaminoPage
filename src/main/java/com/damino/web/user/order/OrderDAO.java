package com.damino.web.user.order;

import java.util.List;

import com.damino.web.user.goods.UserOrderVO;
import com.damino.web.user.quickorder.QuickOrderVO;

public interface OrderDAO {
	// --------------- 배달주문 메서드 --------------------
	public List<DeliveryAddressVO> getDeliveryAddressList(String userid); // 사용자가 지정한 배달주소 목록 조회
	public void insertDeliveryAddress(DeliveryAddressVO vo); // 배달지 주소 insert
	public void deleteDeliveryAddress(DeliveryAddressVO vo); // 배달지 주소 delete

	// --------------- 포장주문 메서드 --------------------
	public List<StoreAddressVO> getStoreAddressList(String userid); // 사용자가 지정한 포장매장 목록 조회
	public void insertStoreAddress(StoreAddressVO vo);
	public void deleteStoreAddress(StoreAddressVO vo);

	public void doOrder(UserOrderVO vo); //주문

}
