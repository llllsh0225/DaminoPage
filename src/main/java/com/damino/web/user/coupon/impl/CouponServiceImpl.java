package com.damino.web.user.coupon.impl;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.damino.web.user.coupon.CouponDAO;
import com.damino.web.user.coupon.CouponService;
import com.damino.web.user.login.UserVO;

@Service("couponService")
public class CouponServiceImpl implements CouponService {
	@Autowired
	private CouponDAO couponDAO;
	
	@Override
	public void insertManiaCoupon(Map<String, String> param) {
		couponDAO.insertManiaCoupon(param);
	}

	@Override
	public UserVO getUser(String userid) {
		return couponDAO.getUser(userid);
	}

}
