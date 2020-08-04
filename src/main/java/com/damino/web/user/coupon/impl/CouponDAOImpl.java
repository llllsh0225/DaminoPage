package com.damino.web.user.coupon.impl;

import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.damino.web.user.coupon.CouponDAO;
import com.damino.web.user.login.UserVO;

@Repository("couponDAO")
public class CouponDAOImpl implements CouponDAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public void insertManiaCoupon(Map<String, String> param) {
		System.out.println("�ŴϾ� ���� �߱�");
		sqlSessionTemplate.insert("CouponDAO.insertManiaCoupon", param);
	}

	@Override
	public UserVO getUser(String userid) {
		System.out.println("���� �߱��� ���� ȸ�� ��ü ������");
		return sqlSessionTemplate.selectOne("CouponDAO.getUser", userid);
	}

}
