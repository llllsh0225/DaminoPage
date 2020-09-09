package com.damino.web.admin.market.member.regist.impl;

import java.util.List;

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

	@Override
	public List<MarketAdminMemberVO> searchStore(String storeRegion) {
		System.out.println("#DAO[storeRegion] : " + storeRegion);
		return sqlSessionTemplate.selectList("marketAdminMemberDAO.searchStore", storeRegion);
	}

	@Override
	public List<MarketAdminMemberVO> getStoreManager(MarketAdminMemberVO vo) {
		System.out.println("매장관리자 리스트 불러오기");
		return sqlSessionTemplate.selectList("marketAdminMemberDAO.getStoreManager", vo);
	}

}
