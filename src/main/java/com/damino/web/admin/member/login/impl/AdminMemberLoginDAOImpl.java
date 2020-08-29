package com.damino.web.admin.member.login.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.damino.web.admin.market.member.regist.MarketAdminMemberVO;
import com.damino.web.admin.member.login.AdminMemberLoginDAO;
import com.damino.web.admin.member.login.AdminMemberLoginVO;


@Repository("adminloginDAO")
public class AdminMemberLoginDAOImpl implements AdminMemberLoginDAO {


	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public AdminMemberLoginVO login(AdminMemberLoginVO vo) {
		System.out.println("[adminLoginDAOImpl] : "+vo);
		return sqlSessionTemplate.selectOne("AdminMemberLoginDAO.adminloginCheckId",vo);
	}

	@Override
	public List<MarketAdminMemberVO> marketAdminList() {
		return sqlSessionTemplate.selectList("AdminMemberLoginDAO.marketAdminList");
	}

}
