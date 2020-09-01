package com.damino.web.user.order;

import java.util.List;

import com.damino.web.user.goods.UserOrderVO;

public interface OrderService {
	// --------------- ����ֹ� ���� --------------------
	public List<DeliveryAddressVO> getDeliveryAddressList(String userid); // ����ڰ� ������ ����ּ� ��� ��ȸ
	public void insertDeliveryAddress(DeliveryAddressVO vo); // ����� �ּ� insert
	public void deleteDeliveryAddress(DeliveryAddressVO vo); // ����� �ּ� delete

	// --------------- �����ֹ� ���� --------------------
	public List<StoreAddressVO> getStoreAddressList(String userid); // ����ڰ� ������ ������� ��� ��ȸ
	public void insertStoreAddress(StoreAddressVO vo);
	public void deleteStoreAddress(StoreAddressVO vo);
	
	public void doOrder(UserOrderVO vo);//�ֹ�

}
