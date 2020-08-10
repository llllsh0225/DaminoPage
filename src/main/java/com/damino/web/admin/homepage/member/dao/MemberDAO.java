package com.damino.web.admin.homepage.member.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.damino.web.admin.homepage.member.vo.MemberVO;

@Repository("iMemberDAO")
public class MemberDAO implements IMemberDAO{

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public List<MemberVO> selectAllMembers() {
		
		return sqlSessionTemplate.selectList("iMemberDAO.selectAllMembers");
	}

	@Override
	public List<MemberVO> selectAllPhone() {
		
		return sqlSessionTemplate.selectList("iMemberDAO.selectAllPhone");
	}

}
