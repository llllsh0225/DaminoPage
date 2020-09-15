package com.damino.web.admin.hompage.member.service;

import java.util.List;

import com.damino.web.admin.homepage.member.vo.MemberVO;

public interface IMemberService {
	
	List<MemberVO> selectAllMembers();
	public List<MemberVO> selectAllPhone();
	public void memberDel(MemberVO vo);
	public MemberVO getUserMember(MemberVO vo);
}
