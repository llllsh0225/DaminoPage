package com.damino.web.admin.member.coupon.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.damino.web.admin.member.coupon.CouponManagementDAO;
import com.damino.web.admin.member.coupon.CouponManagementService;
import com.damino.web.admin.member.coupon.MakePromotionCouponVO;
import com.damino.web.user.coupon.CouponVO;

@Service("couponManagementService")
public class CouponManagementServiceImpl implements CouponManagementService {
	@Autowired
	private CouponManagementDAO couponManagementDAO;
	
	
	@Override
	public List<CouponVO> getUsersCouponList() {
		return couponManagementDAO.getUsersCouponList();
	}


	@Override
	public List<CouponVO> makePromotionCoupons(MakePromotionCouponVO vo) {
		System.out.println("CouponVO 리스트 만들기..");
		System.out.println(vo.getNumber());
		List<CouponVO> makeCoupons = new ArrayList<CouponVO>();
		
		for(int i=0; i<vo.getNumber(); i++) {
			CouponVO coupon = new CouponVO();
			coupon.setCoupon_name(vo.getCoupon_name());
			coupon.setOrdertype(vo.getOrdertype());
			coupon.setDiscountrate(vo.getDiscountrate());
			System.out.println(coupon.getCoupon_name());
			makeCoupons.add(coupon);
		}
		
		return makeCoupons;
	}


	@Override
	public void insertPromotionCoupon(Map<String, Object> list) {
		couponManagementDAO.insertPromotionCoupon(list);
	}


	@Override
	public String getNextCouponCode() {
		return couponManagementDAO.getNextCouponCode();
	}


	@Override
	public int getNextCouponSeq() {
		return couponManagementDAO.getNextCouponSeq();
	}


	@Override
	public void deleteCoupon(int seq) {
		couponManagementDAO.deleteCoupon(seq);
	}

}
