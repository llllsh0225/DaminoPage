package com.damino.web.user.order;

import java.util.List;

public interface OrderService {
	// --------------- ����ֹ� ���� --------------------
	public List<DeliveryAddressVO> getDeliveryAddressList(String userid); // ����ڰ� ������ ����ּ� ��� ��ȸ
	public void insertDeliveryAddress(DeliveryAddressVO vo); // ����� �ּ� insert
}