package com.damino.web.user.coupon;

import java.util.Map;

import com.damino.web.user.login.UserVO;

public interface CouponService {
	public void insertManiaCoupon(Map<String, String> param); // [나의 등급]-[쿠폰 지급] 매니아 쿠폰 발급
	public UserVO getUser(String userid); // userid 를 받아 회원 객체를 얻어옴
}
