package com.damino.web.admin.homepage.member.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.damino.web.admin.homepage.member.HomepageAdminMemDAO;
import com.damino.web.admin.homepage.member.HomepageAdminMemVO;

@Repository("homepageAdminMemDAO")
public class HomepageAdminMemDAOImpl implements HomepageAdminMemDAO{

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public List<HomepageAdminMemVO> getUsersList() {
		System.out.println("HomepageAdminMemDAOImpl getUserList()");
		return sqlSessionTemplate.selectList("homepageAdminMemDAO.getUsersList");
	}

}
