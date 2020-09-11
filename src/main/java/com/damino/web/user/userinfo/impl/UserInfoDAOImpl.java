package com.damino.web.user.userinfo.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.damino.web.user.login.UserVO;
import com.damino.web.user.userinfo.UserInfoDAO;
import com.damino.web.user.userinfo.UserInfoVO;

@Repository("userInfoDAO")
public class UserInfoDAOImpl implements UserInfoDAO{
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	@Override
	public UserInfoVO passwdCheck(UserInfoVO vo) {
		System.out.println("UserInfoDAOImpl passwdCheck(vo)");
		return sqlSessionTemplate.selectOne("UserMemberDAO.passwdCheck", vo);
	}

	@Override
	public void updateUserMember(UserInfoVO vo) {
		System.out.println("UserInfoDAOImpl updateUserMember(vo)");
		sqlSessionTemplate.update("UserMemberDAO.updateUserMember", vo);
	}

	@Override
	public String findUserId(UserVO vo) {
		System.out.println("���� ���̵� ã��");
		return sqlSessionTemplate.selectOne("UserMemberDAO.findUserId", vo);
	}

	@Override
	public void updatePasswd(UserVO vo) {
		System.out.println("�� ��й�ȣ�� ����");
		sqlSessionTemplate.update("UserMemberDAO.updatePasswd", vo);
	}

	@Override
	public void memberWithdraw(UserInfoVO vo) {
		System.out.println("ȸ��Ż�� Proc");
		sqlSessionTemplate.delete("UserMemberDAO.memberWithdraw", vo);
	}
}
