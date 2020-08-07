package com.damino.web.admin.member.coupon;

import java.util.List;
import java.util.Map;

import com.damino.web.user.coupon.CouponVO;

public interface CouponManagementService {
	public List<CouponVO> getUsersCouponList(); // DB�� ����� ����� ���� ����Ʈ ��ü�� �ҷ���
	public List<CouponVO> makePromotionCoupons(MakePromotionCouponVO vo); // ������ �������� ��� ������ �޾� ���� ����Ʈ�� ����
	public String getNextCouponCode(); // ���θ�� ���� �ڵ� �ڵ�����
	public int getNextCouponSeq(); // ���� seq �ڵ�����
	public void insertPromotionCoupon(Map<String, Object> list); // ������ ����VO ����Ʈ�� �޾� ���θ�� ���� ��ϱ�� ����
}
