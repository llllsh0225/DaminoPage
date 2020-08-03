package com.damino.web.user.login.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.damino.web.user.login.UserDAO;
import com.damino.web.user.login.UserVO;

@Repository("userDAO")
public class UserDAOImpl implements UserDAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public UserVO login(UserVO vo){
		System.out.println("UserDAOImpl login(vo)");
		return sqlSessionTemplate.selectOne("UserMemberDAO.login", vo);
	}
}
