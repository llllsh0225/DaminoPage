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
		System.out.println("���� 3���� ���� �ֹ� �Ǽ� ī��Ʈ");
		return sqlSessionTemplate.selectOne("UserLevelDAO.getUsersOrderCnt", userid);
	}

	@Override
	public int getUsersPayCnt(String userid) {
		System.out.println("���� 1�� 1�Ϻ��� ��������� �ֹ��� ī��Ʈ");
		return sqlSessionTemplate.selectOne("UserLevelDAO.getUsersPayCnt", userid);
	}

}
