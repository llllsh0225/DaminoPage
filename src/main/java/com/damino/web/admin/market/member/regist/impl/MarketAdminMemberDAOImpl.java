package com.damino.web.admin.market.member.regist.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.damino.web.admin.market.member.regist.MarketAdminMemberDAO;
import com.damino.web.admin.market.member.regist.MarketAdminMemberVO;

@Repository("marketAdminMemberDAO")
public class MarketAdminMemberDAOImpl implements MarketAdminMemberDAO{

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	@Override
	public void MarketAdminMember(MarketAdminMemberVO vo) {
		System.out.println("MarketAdminMemberDAOImpl MarketAdminMemberVO(vo)");
		sqlSessionTemplate.insert("marketAdminMemberDAO.registMarketAdminMember", vo);
	}
	
	/**
	 * id 중복체크 관련 메소드
	 * */
	@Override
	public int idCheck(String managerId) {
		System.out.println("#DAO[id] : " + managerId);
		return sqlSessionTemplate.selectOne("marketAdminMemberDAO.idCheck", managerId);
	}

}
