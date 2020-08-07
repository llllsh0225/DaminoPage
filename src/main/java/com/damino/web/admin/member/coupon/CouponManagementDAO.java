package com.damino.web.admin.member.coupon;

import java.util.List;

import com.damino.web.user.coupon.CouponVO;

public interface CouponManagementDAO {
	public List<CouponVO> getUsersCouponList(); // DB에 저장된 사용자 쿠폰 리스트 전체를 불러옴
}
