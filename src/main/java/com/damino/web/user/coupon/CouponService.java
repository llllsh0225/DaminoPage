package com.damino.web.user.coupon;

import java.util.List;
import java.util.Map;

import com.damino.web.user.login.UserVO;

public interface CouponService {
	public int chkUsersManiaCoupon(String userid); // ���� ���� �� �̹� �߱޵� ������ �ִ��� Ȯ��
	public void insertManiaCoupon(Map<String, String> param); // [���� ���]-[���� ����] �ŴϾ� ���� �߱�
	public List<CouponVO> getMyCouponList(String userid); // [������] ������� ��� ������ ���� ���� ��������
	public UserVO searchUser(Map<String, String> param); // ���� �����ϱ� ��� -> ������ ������ �����ϴ��� Ȯ��
	public void updatePresentCoupon(Map<String, String> param); // ������ ���� ������ ������Ʈ
	public void sendCouponCodeSMS(String presentUserName, String presentUserPhone, String presentCouponCode); // ���� ���� �������� ���� �ڵ� ���� �߼�
	public void registEcoupon(Map<String, String> param); // ECoupon ��� ���
	public int chkRegistEcoupon(Map<String, String> param); // ECoupon - ��ϰ����� �������� ���� �˻�
}
