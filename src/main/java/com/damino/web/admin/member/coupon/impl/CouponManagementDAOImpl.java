package com.damino.web.admin.member.coupon.impl;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.damino.web.admin.member.coupon.CouponManagementDAO;
import com.damino.web.user.coupon.CouponVO;

@Repository("couponManagementDAO")
public class CouponManagementDAOImpl implements CouponManagementDAO {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public List<CouponVO> getUsersCouponList() {
		System.out.println("사용자 쿠폰 목록 전체조회");
		return sqlSessionTemplate.selectList("CouponDAO.getUsersCouponList");
	}

	@Override
	public void insertPromotionCoupon(Map<String, Object> list) {
		System.out.println("프로모션 쿠폰 등록");
		sqlSessionTemplate.insert("CouponDAO.insertPromotionCoupon", list);
	}

	@Override
	public String getNextCouponCode() {
		System.out.println("프로모션 쿠폰키 자동 생성");
		return sqlSessionTemplate.selectOne("CouponDAO.getNextCouponCode");
	}

	@Override
	public int getNextCouponSeq() {
		System.out.println("쿠폰 seq 증가값 조회");
		return sqlSessionTemplate.selectOne("CouponDAO.getNextCouponSeq");
	}

}
