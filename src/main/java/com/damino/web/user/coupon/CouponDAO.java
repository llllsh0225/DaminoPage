package com.damino.web.user.coupon;

import java.util.List;
import java.util.Map;

public interface CouponDAO {
	public int chkUsersManiaCoupon(String userid); // ���� ���� �� �̹� �߱޵� ������ �ִ��� Ȯ��
	public void insertManiaCoupon(Map<String, String> param); // [���� ���]-[���� ����] �ŴϾ� ���� �߱�
	public List<CouponVO> getMyCouponList(String userid); // [������] ������� ��� ������ ���� ���� ��������
}
