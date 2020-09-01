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
		String daminoTel = "01093613740"; // CoolSMS�� ��ϵ� �߽� ��ȣ

		Message sendKey = new Message(api_key, api_secret);

		HashMap<String, String> params = new HashMap<String, String>();
		params.put("to", presentUserPhone);
		params.put("from", daminoTel);
		params.put("type", "LMS");
		params.put("text", presentUserName + "�Բ� �ٹ̳����� �������� ������ �����߽��ϴ�! \n�ٹ̳����� Ȩ���������� ������ȣ�� ����ϼ���. \n ������ȣ : " + presentCouponCode);
		params.put("subject", "[�ٹ̳����� ��������]");

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

	@Scheduled(cron = "0 0 0 * * *") // ���� 0�� 0�� 0�ʸ��� ����
	@Override
	public void updateChkusable() { // ��ȿ�Ⱓ ����� ������ chksuable �Ӽ��� 'N'���� ���� 0�� 0�� 0�ʸ��� �ڵ� ������Ʈ
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
