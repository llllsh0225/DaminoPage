package com.damino.web.admin.homepage.member;

import java.util.List;

public interface MemberService {
	
	List<MemberVO> selectAllMembers();
	public List<MemberVO> selectAllPhone();
	public void memberDel(MemberVO vo);
	public MemberVO getUserMember(MemberVO vo);
}
