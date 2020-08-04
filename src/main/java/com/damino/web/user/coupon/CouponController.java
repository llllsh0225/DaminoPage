package com.damino.web.user.coupon;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.damino.web.user.login.UserVO;

@Controller
public class CouponController {
	@Autowired
	private CouponService couponService;
	
	@RequestMapping(value="/insertManiaCoupon.do", method=RequestMethod.POST)
	@ResponseBody
	public String insertManiaCoupon(@RequestBody Map<String, Object> param) { // [���� ����]-[���� ����] �ŴϾ� ���� ���� �޼���
		String userid = (String)param.get("userid");
		System.out.println(userid);
		
		UserVO user = couponService.getUser(userid); // userid�� �޾� user ��ü�� ����
		Map<String, String> userInfo = new HashMap<String, String>();
		userInfo.put("userid", user.getUserid());
		userInfo.put("userlevel", user.getUserlevel());
		couponService.insertManiaCoupon(userInfo); // ���� ���� �޼���
		
		return "success";
	}
}
