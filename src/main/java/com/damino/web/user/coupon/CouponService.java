package com.damino.web.user.coupon;

import java.util.Map;

import com.damino.web.user.login.UserVO;

public interface CouponService {
	public void insertManiaCoupon(Map<String, String> param); // [���� ���]-[���� ����] �ŴϾ� ���� �߱�
	public UserVO getUser(String userid); // userid �� �޾� ȸ�� ��ü�� ����
}
