package com.damino.web.user.coupon.impl;

import java.sql.SQLException;
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

	@Override
	public UserVO searchUser(Map<String, String> param) {
		System.out.println("������ ������ ������ �����ϴ��� ��ȸ");
		return sqlSessionTemplate.selectOne("CouponDAO.searchUser", param);
	}

	@Override
	public void updatePresentCoupon(Map<String, String> param) {
		System.out.println("������ ���� ������ ������Ʈ");
		sqlSessionTemplate.update("CouponDAO.updatePresentCoupon", param);
	}

	@Override
	public void registEcoupon(Map<String, String> param) {
		System.out.println("e-coupon ���");
		sqlSessionTemplate.update("CouponDAO.registEcoupon", param);
	}

	@Override
	public int chkRegistEcoupon(Map<String, String> param) {
		System.out.println("e-coupon ��� ������ �������� ���� �˻�");
		return sqlSessionTemplate.selectOne("CouponDAO.chkRegistEcoupon", param);
	}

	@Override
	public void updateChkusable() {
		System.out.println("[��ȿ�Ⱓ ���� ���� ���Ұ� ó��]");
		sqlSessionTemplate.update("CouponDAO.updateChkusable");
	}

	@Override
	public void updateUsedCoupon(String couponCode) {
		System.out.println("����� ������ ���Ұ� ó����.");
		sqlSessionTemplate.update("CouponDAO.updateUsedCoupon", couponCode);
	}

}
