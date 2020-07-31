package com.damino.web.user.regist.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.damino.web.user.regist.UserMemberDAO;
import com.damino.web.user.regist.UserMemberVO;

@Repository("UserMemberDAO")
public class UserMemberDAOimpl implements UserMemberDAO{
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public void registUserMember(UserMemberVO vo) {
		System.out.println("UserMemberimpl registUserMember(vo)");
		sqlSessionTemplate.insert("UserMemberDAO.registUserMember", vo);
	}

	@Override
	public int emailcheck(String email) {
		System.out.println("#DAO[email] : " + email);
		return sqlSessionTemplate.selectOne("UserMemberDAO.emailcheck", email);
	}
}
