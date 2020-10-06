package com.damino.web.admin.member.coupon;

import java.util.List;
import java.util.Map;

import com.damino.web.user.coupon.CouponVO;

public interface CouponManagementDAO {
	public List<CouponVO> getUsersCouponList(); // DB�� ����� ����� ���� ����Ʈ ��ü�� �ҷ���
	public String getNextCouponCode(); // ���θ�� ���� �ڵ� �ڵ�����
	public int getNextCouponSeq(); // ���� seq �ڵ�����
	public void insertPromotionCoupon(Map<String, Object> list); // ������ ����VO ����Ʈ�� �޾� ���θ�� ���� ��ϱ�� ����
	public void deleteCoupon(int seq); // �������� ����
}
