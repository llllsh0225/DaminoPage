package com.damino.web.admin.homepage.user.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.damino.web.admin.homepage.user.UsersDAO;
import com.damino.web.admin.homepage.user.UsersVO;

@Repository("usersDAO")
public class UsersDAOImpl implements UsersDAO{

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public List<UsersVO> getUsersList() {
		System.out.println("UserDAOImpl getUserList()");
		return sqlSessionTemplate.selectList("UsersDAO.getUsersList");
	}

}
