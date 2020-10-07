package com.damino.web.admin.hompage.member.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.damino.web.admin.homepage.member.dao.IMemberDAO;
import com.damino.web.admin.homepage.member.vo.MemberVO;

@Service("iMemberService")
public class MemberService implements IMemberService{

	@Autowired
	IMemberDAO memberDAO;

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
