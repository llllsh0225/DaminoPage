package com.damino.web.user.login.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.damino.web.user.login.UserDAO;
import com.damino.web.user.login.UserVO;

@Repository("userDAO")
public class UserDAOimpl implements UserDAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public UserVO getUser(UserVO vo) {
		return sqlSessionTemplate.selectOne("UserDAO.getUser", vo);
	}
	

}
