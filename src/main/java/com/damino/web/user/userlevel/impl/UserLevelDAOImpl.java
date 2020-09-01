package com.damino.web.user.userlevel.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.damino.web.user.userlevel.UserLevelDAO;

@Repository("userLevelDAO")
public class UserLevelDAOImpl implements UserLevelDAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public int getUsersOrderCnt(String userid) {
		System.out.println("지난 3개월 간의 주문 건수 카운트");
		if(sqlSessionTemplate.selectOne("UserLevelDAO.getUsersOrderCnt", userid) != null) {
			return sqlSessionTemplate.selectOne("UserLevelDAO.getUsersOrderCnt", userid);
		}else {
			return 0;
		} 
	}

	@Override
	public int getUsersPayCnt(String userid) {
		System.out.println("올해 1월 1일부터 현재까지의 주문액 카운트");
		if(sqlSessionTemplate.selectOne("UserLevelDAO.getUsersPayCnt", userid) != null) {
			return sqlSessionTemplate.selectOne("UserLevelDAO.getUsersPayCnt", userid);
		}else {
			return 0;
		}
	}

	@Override
	public void setRegularLevel() {
		System.out.println("회원 등급을 REGULAR로 조정");
		sqlSessionTemplate.update("UserLevelDAO.setRegularLevel");
	}

	@Override
	public void setPremiumLevel() {
		System.out.println("회원 등급을 PREMIUM으로 조정");
		sqlSessionTemplate.update("UserLevelDAO.setPremiumLevel");
	}

	@Override
	public void setVIPLevel() {
		System.out.println("회원 등급을 VIP로 조정");
		sqlSessionTemplate.update("UserLevelDAO.setVIPLevel");
	}

	@Override
	public void setRoyalLevel() {
		System.out.println("회원 등급을 ROYAL로 조정");
		sqlSessionTemplate.update("UserLevelDAO.setRoyalLevel");
	}

	@Override
	public void degradeRoyalUser() {
		System.out.println("ROYAL 회원 중 등급유지조건을 만족하지 못한 회원을 VIP로 degrade");
		sqlSessionTemplate.update("UserLevelDAO.degradeRoyalUser");
	}

}
