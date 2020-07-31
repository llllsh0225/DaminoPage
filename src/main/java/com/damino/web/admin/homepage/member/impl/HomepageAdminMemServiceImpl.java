package com.damino.web.admin.homepage.member.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.damino.web.admin.homepage.member.HomepageAdminMemDAO;
import com.damino.web.admin.homepage.member.HomepageAdminMemService;
import com.damino.web.admin.homepage.member.HomepageAdminMemVO;

@Service("homepageAdminMemService")
public class HomepageAdminMemServiceImpl implements HomepageAdminMemService{

	@Autowired
	private HomepageAdminMemDAO homepageAdminMemDAO;
	
	@Override
	public List<HomepageAdminMemVO> getUsersList() {
		System.out.println("HomepageAdminMemServiceImpl getUserList()");
		return homepageAdminMemDAO.getUsersList();
	}

}
