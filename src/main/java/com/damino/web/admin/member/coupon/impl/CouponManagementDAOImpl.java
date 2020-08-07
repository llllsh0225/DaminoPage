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
		System.out.println("����� ���� ��� ��ü��ȸ");
		return sqlSessionTemplate.selectList("CouponDAO.getUsersCouponList");
	}

	@Override
	public void insertPromotionCoupon(Map<String, Object> list) {
		System.out.println("���θ�� ���� ���");
		sqlSessionTemplate.insert("CouponDAO.insertPromotionCoupon", list);
	}

	@Override
	public String getNextCouponCode() {
		System.out.println("���θ�� ����Ű �ڵ� ����");
		return sqlSessionTemplate.selectOne("CouponDAO.getNextCouponCode");
	}

	@Override
	public int getNextCouponSeq() {
		System.out.println("���� seq ������ ��ȸ");
		return sqlSessionTemplate.selectOne("CouponDAO.getNextCouponSeq");
	}

}
