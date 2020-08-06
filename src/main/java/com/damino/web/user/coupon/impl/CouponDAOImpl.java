package com.damino.web.user.coupon.impl;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.damino.web.user.coupon.CouponDAO;
import com.damino.web.user.coupon.CouponVO;
import com.damino.web.user.login.UserVO;

@Repository("couponDAO")
public class CouponDAOImpl implements CouponDAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public int chkUsersManiaCoupon(String userid) {
		System.out.println("매니아 쿠폰 중복발급 확인");
		return sqlSessionTemplate.selectOne("CouponDAO.chkUsersManiaCoupon", userid);
	}
	
	@Override
	public void insertManiaCoupon(Map<String, String> param) {
		System.out.println("매니아 쿠폰 발급");
		sqlSessionTemplate.insert("CouponDAO.insertManiaCoupon", param);
	}

	@Override
	public List<CouponVO> getMyCouponList(String userid) {
		System.out.println("user의 쿠폰리스트 조회");
		return sqlSessionTemplate.selectList("CouponDAO.getMyCouponList", userid);
	}

	@Override
	public UserVO searchUser(Map<String, String> param) {
		System.out.println("쿠폰을 선물할 유저가 존재하는지 조회");
		return sqlSessionTemplate.selectOne("CouponDAO.searchUser", param);
	}

	@Override
	public void updatePresentCoupon(Map<String, String> param) {
		System.out.println("선물할 쿠폰 데이터 업데이트");
		sqlSessionTemplate.update("CouponDAO.updatePresentCoupon", param);
	}

	@Override
	public void registEcoupon(Map<String, String> param) {
		System.out.println("e-coupon 등록");
		sqlSessionTemplate.update("CouponDAO.registEcoupon", param);
	}

	@Override
	public int chkRegistEcoupon(String userid) {
		System.out.println("e-coupon 등록 가능한 쿠폰인지 여부 검사");
		return sqlSessionTemplate.selectOne("CouponDAO.chkRegistEcoupon", userid);
	}

}
