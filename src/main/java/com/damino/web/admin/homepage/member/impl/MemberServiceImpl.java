package com.damino.web.admin.homepage.member.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.damino.web.admin.homepage.member.MemberDAO;
import com.damino.web.admin.homepage.member.MemberService;
import com.damino.web.admin.homepage.member.MemberVO;

@Service("iMemberService")
public class MemberServiceImpl implements MemberService{

	@Autowired
	MemberDAO memberDAO;

	@Override
	public List<MemberVO> selectAllMembers() {
		return memberDAO.selectAllMembers();
	}

	@Override
	public List<MemberVO> selectAllPhone() {
		System.out.println(memberDAO.selectAllPhone());
		return memberDAO.selectAllPhone();
		
	}

	@Override
	public void memberDel(MemberVO vo) {
		memberDAO.memberDel(vo);
	}

	@Override
	public MemberVO getUserMember(MemberVO vo) {
		return memberDAO.getUserMember(vo);
	}
}
