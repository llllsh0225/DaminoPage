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
		return sqlSessionTemplate.selectOne("UserLevelDAO.getUsersOrderCnt", userid);
	}

	@Override
	public int getUsersPayCnt(String userid) {
		System.out.println("올해 1월 1일부터 현재까지의 주문액 카운트");
		return sqlSessionTemplate.selectOne("UserLevelDAO.getUsersPayCnt", userid);
	}

}
