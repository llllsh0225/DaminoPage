package com.damino.web.user.coupon;

import java.util.List;
import java.util.Map;

public interface CouponService {
	public int chkUsersManiaCoupon(String userid); // 쿠폰 지급 시 이미 발급된 쿠폰이 있는지 확인
	public void insertManiaCoupon(Map<String, String> param); // [나의 등급]-[쿠폰 지급] 매니아 쿠폰 발급
	public List<CouponVO> getMyCouponList(String userid); // [쿠폰함] 사용자의 사용 가능한 보유 쿠폰 가져오기
}
