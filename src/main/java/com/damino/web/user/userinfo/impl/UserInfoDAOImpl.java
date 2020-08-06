package com.damino.web.user.userinfo.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.damino.web.user.userinfo.UserInfoDAO;

@Repository("userInfoDAO")
public class UserInfoDAOImpl implements UserInfoDAO{
	@Autowired
	private SqlSessionTemplate seqlSessionTemplate;
}
