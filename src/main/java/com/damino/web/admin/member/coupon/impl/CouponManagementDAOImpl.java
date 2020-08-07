package com.damino.web.admin.member.coupon.impl;

import java.util.List;

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

}
