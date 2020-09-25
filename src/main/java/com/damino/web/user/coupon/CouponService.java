package com.damino.web.user.coupon;

import java.util.List;
import java.util.Map;

import com.damino.web.user.board.paging.Paging;
import com.damino.web.user.login.UserVO;

public interface CouponService {
	public int chkUsersManiaCoupon(String userid); // ���� ���� �� �̹� �߱޵� ������ �ִ��� Ȯ��
	public void insertManiaCoupon(Map<String, String> param); // [���� ���]-[���� ����] �ŴϾ� ���� �߱�
	public List<CouponVO> getMyCouponList(Paging pa); // [������] ������� ��� ������ ���� ���� ��������
	public UserVO searchUser(Map<String, String> param); // ���� �����ϱ� ��� -> ������ ������ �����ϴ��� Ȯ��
	public void updatePresentCoupon(Map<String, String> param); // ������ ���� ������ ������Ʈ
	public void sendCouponCodeSMS(String presentUserName, String presentUserPhone, String presentCouponCode); // ���� ���� �������� ���� �ڵ� ���� �߼�
	public void registEcoupon(Map<String, String> param); // ECoupon ��� ���
	public int chkRegistEcoupon(Map<String, String> param); // ECoupon - ��ϰ����� �������� ���� �˻�
	public void updateChkusable(); // ��ȿ�Ⱓ�� ����� ������ chkusable �Ӽ��� 'N'�� ���� (���� 0�� 0�� 0�ʸ��� ����)
	public void updateUsedCoupon(String couponCode); // ���� ������ ��� �Ұ� ó��
	public void deleteExpirations(); // ��ȿ�Ⱓ ���� ���� �ϰ� ����
	public int countCoupon(String userid); // ��밡���� ������ ��ȸ
}
