package com.damino.web.user.coupon.impl;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.damino.web.user.coupon.CouponDAO;
import com.damino.web.user.coupon.CouponVO;

@Repository("couponDAO")
public class CouponDAOImpl implements CouponDAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public int chkUsersManiaCoupon(String userid) {
		System.out.println("�ŴϾ� ���� �ߺ��߱� Ȯ��");
		return sqlSessionTemplate.selectOne("CouponDAO.chkUsersManiaCoupon", userid);
	}
	
	@Override
	public void insertManiaCoupon(Map<String, String> param) {
		System.out.println("�ŴϾ� ���� �߱�");
		sqlSessionTemplate.insert("CouponDAO.insertManiaCoupon", param);
	}

	@Override
	public List<CouponVO> getMyCouponList(String userid) {
		System.out.println("user�� ��������Ʈ ��ȸ");
		return sqlSessionTemplate.selectList("CouponDAO.getMyCouponList", userid);
	}

}