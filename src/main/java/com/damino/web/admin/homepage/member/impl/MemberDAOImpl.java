package com.damino.web.admin.homepage.member.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.damino.web.admin.homepage.member.MemberDAO;
import com.damino.web.admin.homepage.member.MemberVO;

@Repository("iMemberDAO")
public class MemberDAOImpl implements MemberDAO{

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

	@Override
	public void memberDel(MemberVO vo) {
		System.out.println("회원 삭제");
		sqlSessionTemplate.delete("iMemberDAO.memberDel", vo);
	}

	@Override
	public MemberVO getUserMember(MemberVO vo) {
		System.out.println("선택한 회원정보 불러오기");
		return sqlSessionTemplate.selectOne("iMemberDAO.getUserMember", vo);
	}

}
