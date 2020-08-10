package com.damino.web.user.coupon;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.damino.web.user.login.UserVO;

public interface CouponService {
	public int chkUsersManiaCoupon(String userid); // 쿠폰 지급 시 이미 발급된 쿠폰이 있는지 확인
	public void insertManiaCoupon(Map<String, String> param); // [나의 등급]-[쿠폰 지급] 매니아 쿠폰 발급
	public List<CouponVO> getMyCouponList(String userid); // [쿠폰함] 사용자의 사용 가능한 보유 쿠폰 가져오기
	public UserVO searchUser(Map<String, String> param); // 쿠폰 선물하기 기능 -> 선물할 유저가 존재하는지 확인
	public void updatePresentCoupon(Map<String, String> param); // 선물할 쿠폰 데이터 업데이트
	public void sendCouponCodeSMS(String presentUserName, String presentUserPhone, String presentCouponCode); // 선물 받은 유저에게 쿠폰 코드 문자 발송
	public void registEcoupon(Map<String, String> param); // ECoupon 등록 기능
	public int chkRegistEcoupon(Map<String, String> param); // ECoupon - 등록가능한 쿠폰인지 여부 검사
	public void updateChkusable(); // 유효기간이 만료된 쿠폰의 chkusable 속성을 'N'로 세팅 (매일 0시 0분 0초마다 실행)
}
