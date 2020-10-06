package com.damino.web.admin.member.coupon;

import java.util.List;
import java.util.Map;

import com.damino.web.user.coupon.CouponVO;

public interface CouponManagementDAO {
	public List<CouponVO> getUsersCouponList(); // DB에 저장된 사용자 쿠폰 리스트 전체를 불러옴
	public String getNextCouponCode(); // 프로모션 쿠폰 코드 자동생성
	public int getNextCouponSeq(); // 쿠폰 seq 자동생성
	public void insertPromotionCoupon(Map<String, Object> list); // 생성된 쿠폰VO 리스트를 받아 프로모션 쿠폰 등록기능 수행
	public void deleteCoupon(int seq); // 개별쿠폰 삭제
}
