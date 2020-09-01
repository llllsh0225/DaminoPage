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
		if(sqlSessionTemplate.selectOne("UserLevelDAO.getUsersOrderCnt", userid) != null) {
			return sqlSessionTemplate.selectOne("UserLevelDAO.getUsersOrderCnt", userid);
		}else {
			return 0;
		} 
	}

	@Override
	public int getUsersPayCnt(String userid) {
		System.out.println("���� 1�� 1�Ϻ��� ��������� �ֹ��� ī��Ʈ");
		if(sqlSessionTemplate.selectOne("UserLevelDAO.getUsersPayCnt", userid) != null) {
			return sqlSessionTemplate.selectOne("UserLevelDAO.getUsersPayCnt", userid);
		}else {
			return 0;
		}
	}

	@Override
	public void setRegularLevel() {
		System.out.println("ȸ�� ����� REGULAR�� ����");
		sqlSessionTemplate.update("UserLevelDAO.setRegularLevel");
	}

	@Override
	public void setPremiumLevel() {
		System.out.println("ȸ�� ����� PREMIUM���� ����");
		sqlSessionTemplate.update("UserLevelDAO.setPremiumLevel");
	}

	@Override
	public void setVIPLevel() {
		System.out.println("ȸ�� ����� VIP�� ����");
		sqlSessionTemplate.update("UserLevelDAO.setVIPLevel");
	}

	@Override
	public void setRoyalLevel() {
		System.out.println("ȸ�� ����� ROYAL�� ����");
		sqlSessionTemplate.update("UserLevelDAO.setRoyalLevel");
	}

	@Override
	public void degradeRoyalUser() {
		System.out.println("ROYAL ȸ�� �� ������������� �������� ���� ȸ���� VIP�� degrade");
		sqlSessionTemplate.update("UserLevelDAO.degradeRoyalUser");
	}

}
