package com.damino.web.user.coupon.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;

import com.damino.web.user.coupon.CouponDAO;
import com.damino.web.user.coupon.CouponService;
import com.damino.web.user.coupon.CouponVO;
import com.damino.web.user.login.UserVO;

import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;

@Service("couponService")
public class CouponServiceImpl implements CouponService {
	@Autowired
	private CouponDAO couponDAO;
	
	@Override
	public int chkUsersManiaCoupon(String userid) {
		return couponDAO.chkUsersManiaCoupon(userid);
	}
	
	@Override
	public void insertManiaCoupon(Map<String, String> param) {
		couponDAO.insertManiaCoupon(param);
	}

	@Override
	public List<CouponVO> getMyCouponList(String userid) {
		return couponDAO.getMyCouponList(userid);
	}

	@Override
	public UserVO searchUser(Map<String, String> param) {
		return couponDAO.searchUser(param);
	}

	@Override
	public void updatePresentCoupon(Map<String, String> param) {
		couponDAO.updatePresentCoupon(param);
	}

	@Override
	public void sendCouponCodeSMS(String presentUserName, String presentUserPhone, String presentCouponCode) {
		String api_key = "NCSGT81IOU5Z8QFW"; // API KEY
		String api_secret = "B5AFCHCWXWG3SYM1QVUHSOSOXD4BTXIJ"; // API SECRET
		String daminoTel = "01093613740"; // CoolSMS에 등록된 발신 번호

		Message sendKey = new Message(api_key, api_secret);

		HashMap<String, String> params = new HashMap<String, String>();
		params.put("to", presentUserPhone);
		params.put("from", daminoTel);
		params.put("type", "LMS");
		params.put("text", presentUserName + "님께 다미노피자 할인쿠폰 선물이 도착했습니다! \n다미노피자 홈페이지에서 쿠폰번호를 등록하세요. \n 쿠폰번호 : " + presentCouponCode);
		params.put("subject", "[다미노피자 쿠폰선물]");

		try {
			JSONObject obj = (JSONObject) sendKey.send(params);
			System.out.println(obj.toString());
		} catch (CoolsmsException e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
			System.out.println(e.getCode());
		}
		
	}

	@Override
	public void registEcoupon(Map<String, String> param) {
		couponDAO.registEcoupon(param);
	}

	@Override
	public int chkRegistEcoupon(Map<String, String> param) {
		return couponDAO.chkRegistEcoupon(param);
	}

	@Scheduled(cron = "0 0 0 * * *") // 매일 0시 0분 0초마다 실행
	@Override
	public void updateChkusable() { // 유효기간 만료된 쿠폰의 chksuable 속성을 'N'으로 매일 0시 0분 0초마다 자동 업데이트
		couponDAO.updateChkusable();
	}

	@Override
	public void updateUsedCoupon(String couponCode) {
		couponDAO.updateUsedCoupon(couponCode);
	}

	@Override
	public void deleteExpirations() {
		couponDAO.deleteExpirations();
	}

}
