package com.damino.web.admin.member.regist.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.damino.web.admin.member.regist.AdminMemberDAO;
import com.damino.web.admin.member.regist.AdminMemberVO;

@Repository("adminMemberDAO")
public class AdminMemberDAOImpl implements AdminMemberDAO {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public void regAdminMember(AdminMemberVO vo) {
		System.out.println("[adminDAOImpl 角青]");
		sqlSessionTemplate.insert("AdminMemberDAO.registAdminMember",vo);
		//mapping 颇老 积己 饶 ""俊 持扁

	}

}
