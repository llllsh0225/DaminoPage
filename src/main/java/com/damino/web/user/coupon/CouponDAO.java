package com.damino.web.user.coupon;

import java.util.List;
import java.util.Map;

import com.damino.web.user.login.UserVO;

public interface CouponDAO {
	public int chkUsersManiaCoupon(String userid); // ���� ���� �� �̹� �߱޵� ������ �ִ��� Ȯ��
	public void insertManiaCoupon(Map<String, String> param); // [���� ���]-[���� ����] �ŴϾ� ���� �߱�
	public List<CouponVO> getMyCouponList(String userid); // [������] ������� ��� ������ ���� ���� ��������
	public UserVO searchUser(Map<String, String> param); // ���� �����ϱ� ��� -> ������ ������ �����ϴ��� Ȯ��
	public void updatePresentCoupon(Map<String, String> param); // ������ ���� ������ ������Ʈ
}
