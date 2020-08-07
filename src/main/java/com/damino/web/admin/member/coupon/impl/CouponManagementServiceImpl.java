package com.damino.web.admin.member.coupon.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.damino.web.admin.member.coupon.CouponManagementDAO;
import com.damino.web.admin.member.coupon.CouponManagementService;
import com.damino.web.user.coupon.CouponVO;

@Service("couponManagementService")
public class CouponManagementServiceImpl implements CouponManagementService {
	@Autowired
	private CouponManagementDAO couponManagementDAO;
	
	
	@Override
	public List<CouponVO> getUsersCouponList() {
		return couponManagementDAO.getUsersCouponList();
	}

}
