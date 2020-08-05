package com.damino.web.user.coupon.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.damino.web.user.coupon.CouponDAO;
import com.damino.web.user.coupon.CouponService;
import com.damino.web.user.coupon.CouponVO;

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

}
